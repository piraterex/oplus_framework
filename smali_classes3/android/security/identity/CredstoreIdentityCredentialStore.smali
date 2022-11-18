.class Landroid/security/identity/CredstoreIdentityCredentialStore;
.super Landroid/security/identity/IdentityCredentialStore;
.source "CredstoreIdentityCredentialStore.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredstoreIdentityCredentialStore"

.field private static blacklist sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

.field private static blacklist sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mStore:Landroid/security/identity/ICredentialStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 70
    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/security/identity/ICredentialStore;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "store"    # Landroid/security/identity/ICredentialStore;

    .line 34
    invoke-direct {p0}, Landroid/security/identity/IdentityCredentialStore;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    .line 35
    iput-object p1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    .line 37
    return-void
.end method

.method public static blacklist getDirectAccessInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;

    move-result-object v0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 86
    :cond_0
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;

    move-result-object v0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 77
    :cond_0
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-object v0
.end method

.method static blacklist getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "credentialStoreType"    # I

    .line 41
    nop

    .line 43
    const-string v0, "android.security.identity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/security/identity/ICredentialStoreFactory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredentialStoreFactory;

    move-result-object v0

    .line 44
    .local v0, "storeFactory":Landroid/security/identity/ICredentialStoreFactory;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    return-object v1

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 51
    .local v2, "credStore":Landroid/security/identity/ICredentialStore;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/security/identity/ICredentialStoreFactory;->getCredentialStore(I)Landroid/security/identity/ICredentialStore;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 61
    nop

    .line 62
    if-nez v2, :cond_1

    .line 63
    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/security/identity/CredstoreIdentityCredentialStore;

    invoke-direct {v1, p0, v2}, Landroid/security/identity/CredstoreIdentityCredentialStore;-><init>(Landroid/content/Context;Landroid/security/identity/ICredentialStore;)V

    return-object v1

    .line 54
    :catch_0
    move-exception v3

    .line 55
    .local v3, "e":Landroid/os/ServiceSpecificException;
    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 56
    return-object v1

    .line 58
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 52
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected RemoteException "

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public whitelist createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/WritableIdentityCredential;
    .locals 4
    .param p1, "credentialName"    # Ljava/lang/String;
    .param p2, "docType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/AlreadyPersonalizedException;,
            Landroid/security/identity/DocTypeNotSupportedException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x2

    :try_start_0
    iget-object v1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v1, p1, p2}, Landroid/security/identity/ICredentialStore;->createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/IWritableCredential;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .local v1, "wc":Landroid/security/identity/IWritableCredential;
    :try_start_1
    new-instance v2, Landroid/security/GenerateRkpKey;

    iget-object v3, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/security/GenerateRkpKey;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "keyGen":Landroid/security/GenerateRkpKey;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/security/GenerateRkpKey;->notifyKeyGenerated(I)V

    .line 115
    invoke-virtual {v2, v0}, Landroid/security/GenerateRkpKey;->notifyKeyGenerated(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .end local v2    # "keyGen":Landroid/security/GenerateRkpKey;
    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 120
    :goto_0
    :try_start_2
    new-instance v2, Landroid/security/identity/CredstoreWritableIdentityCredential;

    iget-object v3, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2, v1}, Landroid/security/identity/CredstoreWritableIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/security/identity/IWritableCredential;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    .line 123
    .end local v1    # "wc":Landroid/security/identity/IWritableCredential;
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v2, v0, :cond_1

    .line 126
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 127
    new-instance v0, Landroid/security/identity/DocTypeNotSupportedException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/security/identity/DocTypeNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 125
    :cond_1
    new-instance v0, Landroid/security/identity/AlreadyPersonalizedException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/security/identity/AlreadyPersonalizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 121
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_2
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist createPresentationSession(I)Landroid/security/identity/PresentationSession;
    .locals 4
    .param p1, "cipherSuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1}, Landroid/security/identity/ICredentialStore;->createPresentationSession(I)Landroid/security/identity/ISession;

    move-result-object v0

    .line 185
    .local v0, "credstoreSession":Landroid/security/identity/ISession;
    new-instance v1, Landroid/security/identity/CredstorePresentationSession;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p0, v0}, Landroid/security/identity/CredstorePresentationSession;-><init>(Landroid/content/Context;ILandroid/security/identity/CredstoreIdentityCredentialStore;Landroid/security/identity/ISession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 188
    .end local v0    # "credstoreSession":Landroid/security/identity/ISession;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 190
    new-instance v1, Landroid/security/identity/CipherSuiteNotSupportedException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist deleteCredentialByName(Ljava/lang/String;)[B
    .locals 5
    .param p1, "credentialName"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    .line 163
    .local v0, "credstoreCredential":Landroid/security/identity/ICredential;
    :try_start_0
    iget-object v1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/security/identity/ICredentialStore;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 169
    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    goto :goto_1

    .line 165
    :catch_1
    move-exception v1

    .line 166
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :try_start_1
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 167
    const/4 v2, 0x0

    return-object v2

    .line 170
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/security/identity/ICredential;->deleteCredential()[B

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    .local v1, "proofOfDeletion":[B
    return-object v1

    .line 174
    .end local v1    # "proofOfDeletion":[B
    :catch_2
    move-exception v1

    .line 175
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 173
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected RemoteException "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/IdentityCredential;
    .locals 7
    .param p1, "credentialName"    # Ljava/lang/String;
    .param p2, "cipherSuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1, p2}, Landroid/security/identity/ICredentialStore;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;

    move-result-object v5

    .line 141
    .local v5, "credstoreCredential":Landroid/security/identity/ICredential;
    new-instance v0, Landroid/security/identity/CredstoreIdentityCredential;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/security/identity/CredstoreIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/security/identity/ICredential;Landroid/security/identity/CredstorePresentationSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 146
    .end local v5    # "credstoreCredential":Landroid/security/identity/ICredential;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 148
    const/4 v1, 0x0

    return-object v1

    .line 149
    :cond_0
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 150
    new-instance v1, Landroid/security/identity/CipherSuiteNotSupportedException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 144
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getSupportedDocTypes()[Ljava/lang/String;
    .locals 4

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0}, Landroid/security/identity/ICredentialStore;->getSecurityHardwareInfo()Landroid/security/identity/SecurityHardwareInfoParcel;

    move-result-object v0

    .line 94
    .local v0, "info":Landroid/security/identity/SecurityHardwareInfoParcel;
    iget-object v1, v0, Landroid/security/identity/SecurityHardwareInfoParcel;->supportedDocTypes:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 97
    .end local v0    # "info":Landroid/security/identity/SecurityHardwareInfoParcel;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 95
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
