.class public final Landroid/hardware/usb/UsbPort;
.super Ljava/lang/Object;
.source "UsbPort.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPort$EnableUsbDataWhileDockedStatus;,
        Landroid/hardware/usb/UsbPort$ResetUsbPortStatus;,
        Landroid/hardware/usb/UsbPort$EnableLimitPowerTransferStatus;,
        Landroid/hardware/usb/UsbPort$EnableUsbDataStatus;
    }
.end annotation


# static fields
.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_ERROR_INTERNAL:I = 0x1

.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_ERROR_OTHER:I = 0x4

.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_ERROR_PORT_MISMATCH:I = 0x3

.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_SUCCESS:I = 0x0

.field public static final whitelist ENABLE_USB_DATA_ERROR_INTERNAL:I = 0x1

.field public static final whitelist ENABLE_USB_DATA_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist ENABLE_USB_DATA_ERROR_OTHER:I = 0x4

.field public static final whitelist ENABLE_USB_DATA_ERROR_PORT_MISMATCH:I = 0x3

.field public static final whitelist ENABLE_USB_DATA_SUCCESS:I = 0x0

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_DATA_ENABLED:I = 0x4

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_INTERNAL:I = 0x1

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_OTHER:I = 0x5

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_PORT_MISMATCH:I = 0x3

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_SUCCESS:I = 0x0

.field private static final greylist-max-o NUM_DATA_ROLES:I = 0x3

.field private static final greylist-max-o POWER_ROLE_OFFSET:I = 0x0

.field public static final whitelist RESET_USB_PORT_ERROR_INTERNAL:I = 0x1

.field public static final whitelist RESET_USB_PORT_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist RESET_USB_PORT_ERROR_OTHER:I = 0x4

.field public static final whitelist RESET_USB_PORT_ERROR_PORT_MISMATCH:I = 0x3

.field public static final whitelist RESET_USB_PORT_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UsbPort"

.field private static final blacklist sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final greylist-max-o mId:Ljava/lang/String;

.field private final blacklist mSupportedContaminantProtectionModes:I

.field private final greylist-max-o mSupportedModes:I

.field private final blacklist mSupportsEnableContaminantPresenceDetection:Z

.field private final blacklist mSupportsEnableContaminantPresenceProtection:Z

.field private final blacklist mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V
    .locals 1
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "supportedModes"    # I
    .param p4, "supportedContaminantProtectionModes"    # I
    .param p5, "supportsEnableContaminantPresenceProtection"    # Z
    .param p6, "supportsEnableContaminantPresenceDetection"    # Z

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/16 v0, 0xf

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 257
    iput-object p1, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 258
    iput-object p2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    .line 259
    iput p3, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    .line 260
    iput p4, p0, Landroid/hardware/usb/UsbPort;->mSupportedContaminantProtectionModes:I

    .line 261
    iput-boolean p5, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    .line 263
    iput-boolean p6, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    .line 265
    return-void
.end method

.method public static greylist-max-o checkDataRole(I)V
    .locals 3
    .param p0, "mode"    # I

    .line 702
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "powerRole"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 704
    return-void
.end method

.method public static greylist-max-o checkMode(I)V
    .locals 3
    .param p0, "powerRole"    # I

    .line 690
    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "portMode"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 692
    return-void
.end method

.method public static greylist-max-o checkPowerRole(I)V
    .locals 3
    .param p0, "dataRole"    # I

    .line 696
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "powerRole"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 698
    return-void
.end method

.method public static greylist-max-o checkRoles(II)V
    .locals 3
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    .line 708
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "powerRole"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 710
    const-string v2, "dataRole"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 711
    return-void
.end method

.method public static greylist-max-o combineRolesAsBit(II)I
    .locals 2
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    .line 535
    invoke-static {p0, p1}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 536
    add-int/lit8 v0, p0, 0x0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    .line 537
    .local v0, "index":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    return v1
.end method

.method public static blacklist contaminantPresenceStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "contaminantPresenceStatus"    # I

    .line 599
    packed-switch p0, :pswitch_data_0

    .line 609
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 605
    :pswitch_0
    const-string v0, "detected"

    return-object v0

    .line 607
    :pswitch_1
    const-string v0, "not detected"

    return-object v0

    .line 603
    :pswitch_2
    const-string v0, "disabled"

    return-object v0

    .line 601
    :pswitch_3
    const-string v0, "not-supported"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o dataRoleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    .line 585
    packed-switch p0, :pswitch_data_0

    .line 593
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 591
    :pswitch_0
    const-string v0, "device"

    return-object v0

    .line 589
    :pswitch_1
    const-string v0, "host"

    return-object v0

    .line 587
    :pswitch_2
    const-string v0, "no-data"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o modeToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "mode"    # I

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .local v0, "modeString":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 544
    const-string v1, "none"

    return-object v1

    .line 547
    :cond_0
    and-int/lit8 v1, p0, 0x3

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    .line 548
    const-string v1, "dual, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 550
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_2

    .line 551
    const-string v1, "dfp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 552
    :cond_2
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 553
    const-string/jumbo v1, "ufp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_3
    :goto_0
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 557
    const-string v1, "audio_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_4
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 560
    const-string v1, "debug_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 564
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 566
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist powerBrickConnectionStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "powerBrickConnectionStatus"    # I

    .line 651
    packed-switch p0, :pswitch_data_0

    .line 659
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 657
    :pswitch_0
    const-string v0, "disconnected"

    return-object v0

    .line 655
    :pswitch_1
    const-string v0, "connected"

    return-object v0

    .line 653
    :pswitch_2
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o powerRoleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    .line 571
    packed-switch p0, :pswitch_data_0

    .line 579
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 577
    :pswitch_0
    const-string v0, "sink"

    return-object v0

    .line 575
    :pswitch_1
    const-string v0, "source"

    return-object v0

    .line 573
    :pswitch_2
    const-string v0, "no-power"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o roleCombinationsToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "combo"    # I

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const/4 v1, 0x1

    .line 669
    .local v1, "first":Z
    :goto_0
    if-eqz p0, :cond_1

    .line 670
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 671
    .local v2, "index":I
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    not-int v3, v3

    and-int/2addr p0, v3

    .line 672
    div-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x0

    .line 673
    .local v3, "powerRole":I
    rem-int/lit8 v4, v2, 0x3

    .line 674
    .local v4, "dataRole":I
    if-eqz v1, :cond_0

    .line 675
    const/4 v1, 0x0

    goto :goto_1

    .line 677
    :cond_0
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :goto_1
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 681
    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .end local v2    # "index":I
    .end local v3    # "powerRole":I
    .end local v4    # "dataRole":I
    goto :goto_0

    .line 684
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist usbDataStatusToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "usbDataStatus"    # I

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v0, "statusString":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 618
    const-string/jumbo v1, "unknown"

    return-object v1

    .line 621
    :cond_0
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 622
    const-string v1, "enabled"

    return-object v1

    .line 625
    :cond_1
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 626
    const-string v1, "disabled-overheat, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 631
    const-string v1, "disabled-contaminant, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_3
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 635
    const-string v1, "disabled-dock, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_4
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 639
    const-string v1, "disabled-force, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_5
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 643
    const-string v1, "disabled-debug, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", $"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist enableContaminantDetection(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 520
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/usb/UsbManager;->enableContaminantDetection(Landroid/hardware/usb/UsbPort;Z)V

    .line 521
    return-void
.end method

.method public whitelist enableLimitPowerTransfer(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 494
    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    .local v0, "operationId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLimitPowerTransfer opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v1, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    .line 499
    .local v1, "opCallback":Landroid/hardware/usb/UsbOperationInternal;
    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/hardware/usb/UsbManager;->enableLimitPowerTransfer(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 500
    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    .line 501
    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v2

    .line 502
    .local v2, "result":I
    packed-switch v2, :pswitch_data_0

    .line 512
    const/4 v3, 0x4

    return v3

    .line 510
    :pswitch_0
    const/4 v3, 0x3

    return v3

    .line 508
    :pswitch_1
    const/4 v3, 0x2

    return v3

    .line 506
    :pswitch_2
    const/4 v3, 0x1

    return v3

    .line 504
    :pswitch_3
    const/4 v3, 0x0

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist enableUsbData(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 405
    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    .local v0, "operationId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbData opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v1, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    .line 410
    .local v1, "opCallback":Landroid/hardware/usb/UsbOperationInternal;
    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/hardware/usb/UsbManager;->enableUsbData(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 411
    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    .line 414
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v2

    .line 415
    .local v2, "result":I
    packed-switch v2, :pswitch_data_0

    .line 425
    const/4 v3, 0x4

    return v3

    .line 423
    :pswitch_0
    const/4 v3, 0x3

    return v3

    .line 421
    :pswitch_1
    const/4 v3, 0x2

    return v3

    .line 419
    :pswitch_2
    return v3

    .line 417
    :pswitch_3
    const/4 v3, 0x0

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist enableUsbDataWhileDocked()I
    .locals 5

    .line 446
    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    .local v0, "operationId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbData opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v1

    .line 450
    .local v1, "portStatus":Landroid/hardware/usb/UsbPortStatus;
    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v2

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    .line 453
    const/4 v2, 0x4

    return v2

    .line 456
    :cond_0
    new-instance v2, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v3, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    .line 458
    .local v2, "opCallback":Landroid/hardware/usb/UsbOperationInternal;
    iget-object v3, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p0, v0, v2}, Landroid/hardware/usb/UsbManager;->enableUsbDataWhileDocked(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 459
    invoke-virtual {v2}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    .line 460
    invoke-virtual {v2}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v3

    .line 461
    .local v3, "result":I
    packed-switch v3, :pswitch_data_0

    .line 471
    const/4 v4, 0x5

    return v4

    .line 469
    :pswitch_0
    const/4 v4, 0x3

    return v4

    .line 467
    :pswitch_1
    const/4 v4, 0x2

    return v4

    .line 465
    :pswitch_2
    const/4 v4, 0x1

    return v4

    .line 463
    :pswitch_3
    const/4 v4, 0x0

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o getId()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatus()Landroid/hardware/usb/UsbPortStatus;
    .locals 1

    .line 330
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedContaminantProtectionModes()I
    .locals 1

    .line 302
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedContaminantProtectionModes:I

    return v0
.end method

.method public greylist-max-o getSupportedModes()I
    .locals 1

    .line 290
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    return v0
.end method

.method public greylist-max-o isModeSupported(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 715
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 716
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resetUsbPort(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 381
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    .local v0, "operationId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetUsbPort opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v1, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p1, p2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 385
    .local v1, "opCallback":Landroid/hardware/usb/UsbOperationInternal;
    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/usb/UsbManager;->resetUsbPort(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 386
    return-void
.end method

.method public whitelist setRoles(II)V
    .locals 1
    .param p1, "powerRole"    # I
    .param p2, "dataRole"    # I

    .line 355
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 357
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    .line 358
    return-void
.end method

.method public blacklist supportsEnableContaminantPresenceDetection()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    return v0
.end method

.method public blacklist supportsEnableContaminantPresenceProtection()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbPort{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "supportedContaminantProtectionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedContaminantProtectionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "supportsEnableContaminantPresenceProtection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "supportsEnableContaminantPresenceDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
