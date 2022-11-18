.class public final Landroid/media/AudioDeviceInfo;
.super Ljava/lang/Object;
.source "AudioDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDeviceInfo$AudioDeviceTypeOut;,
        Landroid/media/AudioDeviceInfo$AudioDeviceTypeIn;,
        Landroid/media/AudioDeviceInfo$AudioDeviceType;
    }
.end annotation


# static fields
.field private static final greylist-max-o EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final blacklist EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final greylist-max-o INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field public static final whitelist TYPE_AUX_LINE:I = 0x13

.field public static final whitelist TYPE_BLE_BROADCAST:I = 0x1e

.field public static final whitelist TYPE_BLE_HEADSET:I = 0x1a

.field public static final whitelist TYPE_BLE_SPEAKER:I = 0x1b

.field public static final whitelist TYPE_BLUETOOTH_A2DP:I = 0x8

.field public static final whitelist TYPE_BLUETOOTH_SCO:I = 0x7

.field public static final whitelist TYPE_BUILTIN_EARPIECE:I = 0x1

.field public static final whitelist TYPE_BUILTIN_MIC:I = 0xf

.field public static final whitelist TYPE_BUILTIN_SPEAKER:I = 0x2

.field public static final whitelist TYPE_BUILTIN_SPEAKER_SAFE:I = 0x18

.field public static final whitelist TYPE_BUS:I = 0x15

.field public static final whitelist TYPE_DOCK:I = 0xd

.field public static final blacklist TYPE_ECHO_REFERENCE:I = 0x1c

.field public static final whitelist TYPE_FM:I = 0xe

.field public static final whitelist TYPE_FM_TUNER:I = 0x10

.field public static final whitelist TYPE_HDMI:I = 0x9

.field public static final whitelist TYPE_HDMI_ARC:I = 0xa

.field public static final whitelist TYPE_HDMI_EARC:I = 0x1d

.field public static final whitelist TYPE_HEARING_AID:I = 0x17

.field public static final whitelist TYPE_IP:I = 0x14

.field public static final whitelist TYPE_LINE_ANALOG:I = 0x5

.field public static final whitelist TYPE_LINE_DIGITAL:I = 0x6

.field public static final whitelist TYPE_REMOTE_SUBMIX:I = 0x19

.field public static final whitelist TYPE_TELEPHONY:I = 0x12

.field public static final whitelist TYPE_TV_TUNER:I = 0x11

.field public static final whitelist TYPE_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_USB_ACCESSORY:I = 0xc

.field public static final whitelist TYPE_USB_DEVICE:I = 0xb

.field public static final whitelist TYPE_USB_HEADSET:I = 0x16

.field public static final whitelist TYPE_WIRED_HEADPHONES:I = 0x4

.field public static final whitelist TYPE_WIRED_HEADSET:I = 0x3


# instance fields
.field private final greylist-max-o mPort:Landroid/media/AudioDevicePort;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 615
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 616
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 617
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 618
    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 619
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 620
    const/16 v6, 0x10

    const/4 v7, 0x7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 621
    const/16 v8, 0x20

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 622
    const/16 v8, 0x40

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 623
    const/16 v8, 0x80

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 624
    const/16 v8, 0x100

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    const/16 v8, 0x200

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 626
    const/16 v8, 0x400

    const/16 v9, 0x9

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    const/16 v8, 0x800

    const/16 v10, 0xd

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    const/16 v8, 0x1000

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 629
    const/16 v8, 0x2000

    const/16 v11, 0xc

    invoke-virtual {v0, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    const/16 v8, 0x4000

    const/16 v12, 0xb

    invoke-virtual {v0, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 631
    const/high16 v8, 0x4000000

    const/16 v13, 0x16

    invoke-virtual {v0, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 632
    const/high16 v8, 0x10000

    const/16 v14, 0x12

    invoke-virtual {v0, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 633
    const/high16 v8, 0x20000

    const/4 v15, 0x5

    invoke-virtual {v0, v8, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 634
    const/high16 v8, 0x40000

    const/16 v3, 0xa

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    const v8, 0x40001

    const/16 v2, 0x1d

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    const/high16 v8, 0x80000

    const/4 v1, 0x6

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    const/high16 v8, 0x100000

    const/16 v2, 0xe

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 638
    const/high16 v2, 0x200000

    const/16 v8, 0x13

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    const/high16 v2, 0x800000

    const/16 v8, 0x14

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 640
    const/high16 v2, 0x1000000

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 641
    const/high16 v2, 0x8000000

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    const/high16 v2, 0x400000

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 644
    const v2, 0x8000

    const/16 v3, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    const/high16 v2, 0x20000000

    const/16 v3, 0x1a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    const v2, 0x20000001

    const/16 v3, 0x1b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    const v2, 0x20000002

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    const v2, -0x7ffffffc

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 650
    const v2, -0x7ffffff8

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 651
    const v2, -0x7ffffff0

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 652
    const v2, -0x7fffffe0

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    const v2, -0x7fffffc0

    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 654
    const v2, -0x7fffff80

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 655
    const v2, -0x7ffffe00

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 656
    const v2, -0x7ffffc00

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 657
    const v2, -0x7ffff800

    invoke-virtual {v0, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 658
    const v2, -0x7ffff000

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 659
    const/high16 v2, -0x7e000000

    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 660
    const v2, -0x7fffe000

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 661
    const v2, -0x7fffc000

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 662
    const v2, -0x7fff8000

    invoke-virtual {v0, v2, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 663
    const/high16 v2, -0x7fff0000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 664
    const/high16 v2, -0x7ffe0000

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 665
    const/high16 v2, -0x7ff80000

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 666
    const/high16 v2, -0x7ff00000

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 667
    const v2, -0x7fffff00

    const/16 v3, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 668
    const/high16 v2, -0x60000000

    const/16 v3, 0x1a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 669
    const/high16 v2, -0x78000000

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 670
    const v2, -0x77ffffff

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 671
    const/high16 v2, -0x70000000

    const/16 v3, 0x1c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 675
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 676
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 677
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 678
    const/4 v2, 0x4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 679
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 680
    const/high16 v2, 0x20000

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 681
    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 682
    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 683
    const/16 v2, 0x80

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 684
    const/16 v2, 0x400

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 685
    const/high16 v2, 0x40000

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 686
    const v2, 0x40001

    const/16 v3, 0x1d

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    const/16 v2, 0x4000

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    const/16 v2, 0x2000

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 690
    const/16 v2, 0x800

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 691
    const/16 v2, 0xe

    const/high16 v3, 0x100000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    const/high16 v2, 0x10000

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 693
    const/16 v2, 0x13

    const/high16 v3, 0x200000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 694
    const/high16 v2, 0x800000

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    const/high16 v2, 0x1000000

    const/16 v3, 0x15

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    const/16 v2, 0x17

    const/high16 v3, 0x8000000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 697
    const/16 v2, 0x18

    const/high16 v3, 0x400000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 699
    const v2, 0x8000

    const/16 v3, 0x19

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 700
    const/high16 v2, 0x20000000

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 701
    const/16 v2, 0x1b

    const v3, 0x20000001

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 702
    const/16 v2, 0x1e

    const v3, 0x20000002

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 705
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 706
    const v2, -0x7ffffffc

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 707
    const v2, -0x7ffffff8

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 709
    const v2, -0x7ffffff0

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 711
    const v2, -0x7fffffe0

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 712
    const v2, -0x7fffffc0

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 713
    const v2, -0x7ffffe00

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 714
    const v2, -0x7ffff800

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 716
    const v2, -0x7ffff000

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 717
    const/high16 v2, -0x7e000000

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 718
    const v2, -0x7fffe000

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 719
    const/16 v2, 0x11

    const v3, -0x7fffc000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 720
    const v2, -0x7fff8000

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 721
    const/high16 v2, -0x7fff0000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 722
    const/high16 v1, -0x7ffe0000

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 724
    const/high16 v1, -0x7ff80000

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 725
    const/high16 v1, -0x7ff00000

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 726
    const v1, -0x7fffff00

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 728
    const/high16 v1, -0x60000000

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    const/high16 v1, -0x78000000

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 730
    const v1, -0x77ffffff

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 731
    const/16 v1, 0x1c

    const/high16 v2, -0x70000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 734
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/media/AudioDevicePort;)V
    .locals 0
    .param p1, "port"    # Landroid/media/AudioDevicePort;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    .line 394
    return-void
.end method

.method public static greylist-max-o convertDeviceTypeToInternalDevice(I)I
    .locals 2
    .param p0, "deviceType"    # I

    .line 582
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static blacklist convertDeviceTypeToInternalInputDevice(I)I
    .locals 1
    .param p0, "deviceType"    # I

    .line 592
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I
    .locals 2
    .param p0, "deviceType"    # I
    .param p1, "address"    # Ljava/lang/String;

    .line 596
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 597
    .local v0, "internalType":I
    const v1, -0x7ffffffc

    if-ne v0, v1, :cond_0

    .line 598
    const-string v1, "back"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    const v0, -0x7fffff80

    .line 601
    :cond_0
    return v0
.end method

.method public static greylist-max-o convertInternalDeviceToDeviceType(I)I
    .locals 2
    .param p0, "intDevice"    # I

    .line 587
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static blacklist enforceValidAudioDeviceTypeIn(I)V
    .locals 3
    .param p0, "type"    # I

    .line 372
    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->isValidAudioDeviceTypeIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal input device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist enforceValidAudioDeviceTypeOut(I)V
    .locals 3
    .param p0, "type"    # I

    .line 355
    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->isValidAudioDeviceTypeOut(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    return-void

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal output device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist isValidAudioDeviceTypeIn(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 315
    packed-switch p0, :pswitch_data_0

    .line 339
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 337
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static greylist-max-o isValidAudioDeviceTypeOut(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 281
    packed-switch p0, :pswitch_data_0

    .line 309
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 307
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 379
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 380
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/AudioDeviceInfo;

    .line 382
    .local v0, "that":Landroid/media/AudioDeviceInfo;
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 380
    .end local v0    # "that":Landroid/media/AudioDeviceInfo;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAudioDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->audioDescriptors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAudioProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->profiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChannelCounts()[I
    .locals 7

    .line 488
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 491
    .local v0, "countSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 492
    .local v5, "mask":I
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 493
    invoke-static {v5}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v6

    goto :goto_1

    .line 494
    :cond_0
    invoke-static {v5}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v6

    .line 492
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v5    # "mask":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelIndexMasks()[I

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 499
    .local v4, "index_mask":I
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v4    # "index_mask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 502
    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 503
    .local v1, "counts":[I
    const/4 v2, 0x0

    .line 504
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 505
    .local v4, "count":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    aput v4, v1, v2

    .line 506
    .end local v4    # "count":I
    move v2, v5

    goto :goto_3

    .line 507
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_3
    return-object v1
.end method

.method public whitelist getChannelIndexMasks()[I
    .locals 1

    .line 478
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelIndexMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChannelMasks()[I
    .locals 1

    .line 467
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncapsulationMetadataTypes()[I
    .locals 1

    .line 570
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->encapsulationMetadataTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncapsulationModes()[I
    .locals 1

    .line 552
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->encapsulationModes()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncodings()[I
    .locals 1

    .line 525
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->handle()Landroid/media/AudioHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v0

    return v0
.end method

.method public blacklist getInternalType()I
    .locals 1

    .line 409
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getPort()Landroid/media/AudioDevicePort;
    .locals 1

    .line 401
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    return-object v0
.end method

.method public whitelist getProductName()Ljava/lang/CharSequence;
    .locals 2

    .line 423
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "portName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public whitelist getSampleRates()[I
    .locals 1

    .line 455
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType()I
    .locals 3

    .line 577
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 387
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSink()Z
    .locals 2

    .line 446
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isSource()Z
    .locals 2

    .line 439
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
