.class public final Landroid/nfc/cardemulation/NfcFCardEmulation;
.super Ljava/lang/Object;
.source "NfcFCardEmulation.java"


# static fields
.field static final greylist-max-o TAG:Ljava/lang/String; = "NfcFCardEmulation"

.field static greylist-max-o sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/NfcFCardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sIsInitialized:Z

.field static greylist-max-o sService:Landroid/nfc/INfcFCardEmulation;


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcFCardEmulation;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    .line 56
    sput-object p2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    .line 57
    return-void
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/NfcFCardEmulation;
    .locals 6
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    const-class v0, Landroid/nfc/cardemulation/NfcFCardEmulation;

    monitor-enter v0

    .line 66
    if-eqz p0, :cond_6

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_5

    .line 72
    sget-boolean v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    if-nez v2, :cond_2

    .line 73
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_1

    .line 79
    :try_start_1
    const-string v3, "android.hardware.nfc.hcef"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 86
    nop

    .line 87
    const/4 v3, 0x1

    :try_start_2
    sput-boolean v3, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    :cond_0
    :try_start_3
    const-string v3, "NfcFCardEmulation"

    const-string v4, "This device does not support NFC-F card emulation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "NfcFCardEmulation"

    const-string v5, "PackageManager query failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 75
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "NfcFCardEmulation"

    const-string v4, "Cannot get PackageManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 89
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_2
    :goto_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFCardEmulation;

    .line 90
    .local v2, "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    if-nez v2, :cond_4

    .line 92
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;

    move-result-object v3

    .line 93
    .local v3, "service":Landroid/nfc/INfcFCardEmulation;
    if-eqz v3, :cond_3

    .line 97
    new-instance v4, Landroid/nfc/cardemulation/NfcFCardEmulation;

    invoke-direct {v4, v1, v3}, Landroid/nfc/cardemulation/NfcFCardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V

    move-object v2, v4

    .line 98
    sget-object v4, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    :cond_3
    const-string v4, "NfcFCardEmulation"

    const-string v5, "This device does not implement the INfcFCardEmulation interface."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    .end local v3    # "service":Landroid/nfc/INfcFCardEmulation;
    :cond_4
    :goto_1
    monitor-exit v0

    return-object v2

    .line 69
    .end local v2    # "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    :cond_5
    :try_start_5
    const-string v2, "NfcFCardEmulation"

    const-string v3, "NfcAdapter context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 65
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 66
    .restart local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NfcAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static greylist-max-o isValidNfcid2(Ljava/lang/String;)Z
    .locals 7
    .param p0, "nfcid2"    # Ljava/lang/String;

    .line 451
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 452
    return v0

    .line 454
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    const-string v3, " is not a valid NFCID2."

    const-string v4, "NFCID2 "

    const-string v5, "NfcFCardEmulation"

    if-eq v1, v2, :cond_1

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return v0

    .line 459
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "02FE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return v0

    .line 464
    :cond_2
    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    nop

    .line 469
    const/4 v0, 0x1

    return v0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v0
.end method

.method public static greylist-max-o isValidSystemCode(Ljava/lang/String;)Z
    .locals 6
    .param p0, "systemCode"    # Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 427
    return v0

    .line 429
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, " is not a valid System Code."

    const-string v4, "System Code "

    const-string v5, "NfcFCardEmulation"

    if-eq v1, v2, :cond_1

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v0

    .line 434
    :cond_1
    const-string v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 439
    :cond_2
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    nop

    .line 444
    const/4 v0, 0x1

    return v0

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v0

    .line 435
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v0
.end method


# virtual methods
.method public whitelist disableService(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 353
    if-eqz p1, :cond_2

    .line 356
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 361
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 364
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_0

    .line 365
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v2

    .line 369
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 370
    :catch_1
    move-exception v1

    .line 371
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 373
    return v2

    .line 357
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enableService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 316
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 320
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v0, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 328
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_0

    .line 329
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v2

    .line 333
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 334
    :catch_1
    move-exception v1

    .line 335
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 337
    return v2

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity or service is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getMaxNumOfRegisterableSystemCodes()I
    .locals 5

    .line 405
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 409
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, -0x1

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_0

    .line 410
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v2

    .line 414
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 415
    :catch_1
    move-exception v1

    .line 416
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return v2
.end method

.method public greylist-max-o getNfcFServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .line 383
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 384
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 387
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_0

    .line 388
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-object v2

    .line 392
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 393
    :catch_1
    move-exception v1

    .line 394
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-object v2
.end method

.method public whitelist getNfcid2ForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 228
    if-eqz p1, :cond_1

    .line 232
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 236
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_0

    .line 237
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-object v2

    .line 241
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 242
    :catch_1
    move-exception v1

    .line 243
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 245
    return-object v2

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSystemCodeForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 116
    if-eqz p1, :cond_1

    .line 120
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 124
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_0

    .line 125
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v2

    .line 129
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 130
    :catch_1
    move-exception v1

    .line 131
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 133
    return-object v2

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o recoverService()V
    .locals 2

    .line 473
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 474
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    .line 475
    return-void
.end method

.method public whitelist registerSystemCodeForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "systemCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 162
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 166
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 171
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_0

    .line 172
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v2

    .line 176
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 178
    :catch_1
    move-exception v1

    .line 179
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 181
    return v2

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service or systemCode is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNfcid2ForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "nfcid2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 271
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 275
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 280
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_0

    .line 281
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v2

    .line 285
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 287
    :catch_1
    move-exception v1

    .line 288
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 290
    return v2

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service or nfcid2 is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterSystemCodeForService(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 193
    if-eqz p1, :cond_1

    .line 197
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 201
    sget-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    const/4 v2, 0x0

    const-string v3, "NfcFCardEmulation"

    if-nez v1, :cond_0

    .line 202
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v2

    .line 206
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 207
    :catch_1
    move-exception v1

    .line 208
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 210
    return v2

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
