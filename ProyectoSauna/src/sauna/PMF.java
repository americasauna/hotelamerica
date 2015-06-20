package sauna;

import javax.jdo.*;

public final class PMF {
 
 private static final PersistenceManagerFactory instance =
   JDOHelper.getPersistenceManagerFactory("transactions-optional");
 
 private PMF(){}
 
 public static PersistenceManagerFactory get(){
    return instance;
 }
}
