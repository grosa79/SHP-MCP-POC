// Script di test per verificare la connessione al database
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function testConnection() {
  try {
    // Test di connessione
    await prisma.$connect();
    console.log('✅ Connessione al database riuscita!');
    
    // Test di query
    const sessionCount = await prisma.session.count();
    console.log(`📊 Numero di sessioni nel database: ${sessionCount}`);
    
    // Test di creazione (opzionale)
    console.log('🧪 Test completato con successo!');
  } catch (error) {
    console.error('❌ Errore di connessione:', error);
  } finally {
    await prisma.$disconnect();
  }
}

testConnection();