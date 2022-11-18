.class public Landroid/security/keystore/recovery/RecoveryController;
.super Ljava/lang/Object;
.source "RecoveryController.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist APPLICATION_KEY_GRANT_PREFIX:Ljava/lang/String; = "recoverable_key:"

.field public static final greylist-max-o ERROR_BAD_CERTIFICATE_FORMAT:I = 0x19

.field public static final greylist-max-o ERROR_DECRYPTION_FAILED:I = 0x1a

.field public static final greylist-max-o ERROR_DOWNGRADE_CERTIFICATE:I = 0x1d

.field public static final greylist-max-o ERROR_INSECURE_USER:I = 0x17

.field public static final greylist-max-o ERROR_INVALID_CERTIFICATE:I = 0x1c

.field public static final greylist-max-o ERROR_INVALID_KEY_FORMAT:I = 0x1b

.field public static final greylist-max-o ERROR_NO_SNAPSHOT_PENDING:I = 0x15

.field public static final greylist-max-o ERROR_SERVICE_INTERNAL_ERROR:I = 0x16

.field public static final greylist-max-o ERROR_SESSION_EXPIRED:I = 0x18

.field public static final whitelist RECOVERY_STATUS_PERMANENT_FAILURE:I = 0x3

.field public static final whitelist RECOVERY_STATUS_SYNCED:I = 0x0

.field public static final whitelist RECOVERY_STATUS_SYNC_IN_PROGRESS:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoveryController"


# instance fields
.field private final greylist-max-o mBinder:Lcom/android/internal/widget/ILockSettings;

.field private final greylist-max-o mKeyStore:Landroid/security/KeyStore;


# direct methods
.method private constructor greylist-max-o <init>(Lcom/android/internal/widget/ILockSettings;Landroid/security/KeyStore;)V
    .locals 0
    .param p1, "binder"    # Lcom/android/internal/widget/ILockSettings;
    .param p2, "keystore"    # Landroid/security/KeyStore;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    .line 272
    iput-object p2, p0, Landroid/security/keystore/recovery/RecoveryController;->mKeyStore:Landroid/security/KeyStore;

    .line 273
    return-void
.end method

.method private static blacklist getGrantDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .locals 4
    .param p0, "grantAlias"    # Ljava/lang/String;

    .line 724
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 725
    .local v0, "result":Landroid/system/keystore2/KeyDescriptor;
    const/4 v1, 0x1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 726
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 727
    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 729
    :try_start_0
    const-string/jumbo v2, "recoverable_key:"

    .line 730
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 729
    invoke-static {v2, v3}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    nop

    .line 734
    return-object v0

    .line 731
    :catch_0
    move-exception v2

    .line 732
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/security/keystore/recovery/RecoveryController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 290
    nop

    .line 291
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 292
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    new-instance v1, Landroid/security/keystore/recovery/RecoveryController;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/security/keystore/recovery/RecoveryController;-><init>(Lcom/android/internal/widget/ILockSettings;Landroid/security/KeyStore;)V

    return-object v1
.end method

.method public static whitelist isRecoverableKeyStoreEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 303
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 304
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public whitelist createRecoverySession()Landroid/security/keystore/recovery/RecoverySession;
    .locals 1

    .line 762
    invoke-static {p0}, Landroid/security/keystore/recovery/RecoverySession;->newInstance(Landroid/security/keystore/recovery/RecoveryController;)Landroid/security/keystore/recovery/RecoverySession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist generateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "grantAlias":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    return-object v1

    .line 551
    :cond_0
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string/jumbo v2, "null grant alias"

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/security/keystore/recovery/RecoveryController;
    .end local p1    # "alias":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v0    # "grantAlias":Ljava/lang/String;
    .restart local p0    # "this":Landroid/security/keystore/recovery/RecoveryController;
    .restart local p1    # "alias":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 560
    new-instance v1, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_1
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 556
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 557
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v2, "Failed to get key from keystore"

    invoke-direct {v1, v2, v0}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 554
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist generateKey(Ljava/lang/String;[B)Ljava/security/Key;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .line 590
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "grantAlias":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    return-object v1

    .line 592
    :cond_0
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string/jumbo v2, "null grant alias"

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/security/keystore/recovery/RecoveryController;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "metadata":[B
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v0    # "grantAlias":Ljava/lang/String;
    .restart local p0    # "this":Landroid/security/keystore/recovery/RecoveryController;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "metadata":[B
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 601
    new-instance v1, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_1
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 597
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 598
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v2, "Failed to get key from keystore"

    invoke-direct {v1, v2, v0}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 595
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAliases()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 430
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    .line 431
    .local v0, "allStatuses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 434
    .end local v0    # "allStatuses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 432
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o getBinder()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 281
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method public whitelist getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 696
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "grantAlias":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 698
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 705
    .end local v0    # "grantAlias":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 703
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 704
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 701
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v0

    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 369
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 374
    const/4 v1, 0x0

    return-object v1

    .line 376
    :cond_0
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 370
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;
    .locals 2
    .param p1, "grantAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 717
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    .line 718
    invoke-static {p1}, Landroid/security/keystore/recovery/RecoveryController;->getGrantDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    .line 716
    invoke-static {v0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 715
    return-object v0
.end method

.method public whitelist getRecoverySecretTypes()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 526
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getRecoverySecretTypes()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 527
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRecoveryStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 478
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    .line 479
    .local v0, "allStatuses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 480
    .local v1, "status":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 481
    const/4 v2, 0x3

    return v2

    .line 483
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 487
    .end local v0    # "allStatuses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "status":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 485
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRootCertificates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 767
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificates()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist importKey(Ljava/lang/String;[B)Ljava/security/Key;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "grantAlias":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    return-object v1

    .line 625
    :cond_0
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v2, "Null grant alias"

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/security/keystore/recovery/RecoveryController;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "keyBytes":[B
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v0    # "grantAlias":Ljava/lang/String;
    .restart local p0    # "this":Landroid/security/keystore/recovery/RecoveryController;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "keyBytes":[B
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 634
    new-instance v1, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 636
    :cond_1
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 630
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 631
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v2, "Failed to get key from keystore"

    invoke-direct {v1, v2, v0}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 628
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist importKey(Ljava/lang/String;[B[B)Ljava/security/Key;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .param p3, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .line 666
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "grantAlias":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    return-object v1

    .line 668
    :cond_0
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v2, "Null grant alias"

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/security/keystore/recovery/RecoveryController;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "keyBytes":[B
    .end local p3    # "metadata":[B
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v0    # "grantAlias":Ljava/lang/String;
    .restart local p0    # "this":Landroid/security/keystore/recovery/RecoveryController;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "keyBytes":[B
    .restart local p3    # "metadata":[B
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 677
    new-instance v1, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    :cond_1
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 673
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 674
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v2, "Failed to get key from keystore"

    invoke-direct {v1, v2, v0}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 671
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist initRecoveryService(Ljava/lang/String;[B[B)V
    .locals 3
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "certificateFile"    # [B
    .param p3, "signatureFile"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    nop

    .line 355
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1

    .line 349
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    .line 350
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Downgrading certificate serial version isn\'t supported."

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 353
    :cond_0
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 347
    :cond_1
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Invalid certificate for recovery service"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 342
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 747
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    nop

    .line 753
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 748
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 749
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRecoverySecretTypes([I)V
    .locals 2
    .param p1, "secretTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 505
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setRecoverySecretTypes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    nop

    .line 511
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 506
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRecoveryStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 454
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setRecoveryStatus(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    nop

    .line 460
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 455
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setServerParams([B)V
    .locals 2
    .param p1, "serverParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 416
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setServerParams([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    nop

    .line 422
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 417
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 394
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    nop

    .line 400
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    .line 395
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;
    .locals 3
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .line 772
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 773
    new-instance v0, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 778
    :cond_0
    new-instance v0, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error code for method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
