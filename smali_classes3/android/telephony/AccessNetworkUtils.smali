.class public Landroid/telephony/AccessNetworkUtils;
.super Ljava/lang/Object;
.source "AccessNetworkUtils.java"


# static fields
.field private static final blacklist FREQUENCY_KHZ:I = 0x3e8

.field private static final blacklist FREQUENCY_RANGE_HIGH_KHZ:I = 0x5b8d80

.field private static final blacklist FREQUENCY_RANGE_LOW_KHZ:I = 0xf4240

.field private static final blacklist FREQUENCY_RANGE_MID_KHZ:I = 0x2dc6c0

.field public static final greylist-max-o INVALID_BAND:I = -0x1

.field public static final blacklist INVALID_FREQUENCY:I = -0x1

.field private static final blacklist JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "jp"

.field private static final blacklist TAG:Ljava/lang/String; = "AccessNetworkUtils"

.field private static final blacklist UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    .line 47
    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertArfcnToFrequency(III)I
    .locals 1
    .param p0, "arfcn"    # I
    .param p1, "uplinkFrequencyFirstKhz"    # I
    .param p2, "arfcnOffset"    # I

    .line 752
    sub-int v0, p0, p2

    mul-int/lit16 v0, v0, 0xc8

    add-int/2addr v0, p1

    return v0
.end method

.method private static blacklist convertEarfcnToFrequency(III)I
    .locals 1
    .param p0, "low"    # I
    .param p1, "earfcn"    # I
    .param p2, "offset"    # I

    .line 621
    sub-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p0

    return v0
.end method

.method private static blacklist convertUarfcnTddToFrequency(II)I
    .locals 2
    .param p0, "band"    # I
    .param p1, "uarfcn"    # I

    .line 685
    const/16 v0, 0x68

    if-eq p0, v0, :cond_0

    .line 686
    mul-int/lit8 v0, p1, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    .line 688
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    const v1, 0x20ced4

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private static blacklist convertUarfcnToFrequency(II)I
    .locals 1
    .param p0, "offsetKhz"    # I
    .param p1, "uarfcn"    # I

    .line 674
    mul-int/lit16 v0, p1, 0xc8

    add-int/2addr v0, p0

    return v0
.end method

.method public static greylist-max-o getDuplexModeForEutranBand(I)I
    .locals 3
    .param p0, "band"    # I

    .line 65
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 66
    return v0

    .line 69
    :cond_0
    const/16 v1, 0x58

    if-le p0, v1, :cond_1

    .line 70
    return v0

    .line 71
    :cond_1
    const/16 v1, 0x41

    const/4 v2, 0x1

    if-lt p0, v1, :cond_2

    .line 72
    return v2

    .line 73
    :cond_2
    const/16 v1, 0x21

    if-lt p0, v1, :cond_3

    .line 74
    const/4 v0, 0x2

    return v0

    .line 75
    :cond_3
    if-lt p0, v2, :cond_4

    .line 76
    return v2

    .line 79
    :cond_4
    return v0
.end method

.method public static blacklist getFrequencyFromArfcn(IIZ)I
    .locals 10
    .param p0, "band"    # I
    .param p1, "arfcn"    # I
    .param p2, "isUplink"    # Z

    .line 713
    const/4 v0, -0x1

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    .line 714
    return v0

    .line 717
    :cond_0
    const/4 v1, 0x0

    .line 718
    .local v1, "uplinkFrequencyFirst":I
    const/4 v2, 0x0

    .line 719
    .local v2, "arfcnOffset":I
    const/4 v3, 0x0

    .line 720
    .local v3, "downlinkOffset":I
    const/4 v4, 0x0

    .line 722
    .local v4, "frequency":I
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    move-result-object v5

    .line 721
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 723
    .local v8, "arfcnFrequency":Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    iget v9, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->band:I

    if-ne p0, v9, :cond_2

    .line 724
    iget v5, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeFirst:I

    if-lt p1, v5, :cond_1

    iget v5, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeLast:I

    if-gt p1, v5, :cond_1

    .line 726
    iget v1, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->uplinkFrequencyFirst:I

    .line 727
    iget v3, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->downlinkOffset:I

    .line 728
    iget v2, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnOffset:I

    .line 729
    invoke-static {p1, v1, v2}, Landroid/telephony/AccessNetworkUtils;->convertArfcnToFrequency(III)I

    move-result v4

    .line 731
    goto :goto_1

    .line 733
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Band and the range of ARFCN are not consistent: band = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,arfcn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,isUplink = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AccessNetworkUtils"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return v0

    .line 721
    .end local v8    # "arfcnFrequency":Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 740
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    add-int v0, v4, v3

    :goto_2
    return v0
.end method

.method public static blacklist getFrequencyFromEarfcn(IIZ)I
    .locals 7
    .param p0, "band"    # I
    .param p1, "earfcn"    # I
    .param p2, "isUplink"    # Z

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "low":I
    const/4 v1, 0x0

    .line 597
    .local v1, "offset":I
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 598
    .local v5, "earfcnFrequency":Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;
    iget v6, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->band:I

    if-ne p0, v6, :cond_3

    .line 599
    invoke-static {p1, v5, p2}, Landroid/telephony/AccessNetworkUtils;->isInEarfcnRange(ILandroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 600
    if-eqz p2, :cond_0

    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkLowKhz:I

    goto :goto_1

    :cond_0
    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkLowKhz:I

    :goto_1
    move v0, v2

    .line 601
    if-eqz p2, :cond_1

    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkOffset:I

    goto :goto_2

    .line 602
    :cond_1
    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkOffset:I

    :goto_2
    move v1, v2

    .line 603
    goto :goto_3

    .line 605
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Band and the range of EARFCN are not consistent: band = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,earfcn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,isUplink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessNetworkUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v2, -0x1

    return v2

    .line 597
    .end local v5    # "earfcnFrequency":Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 611
    :cond_4
    :goto_3
    invoke-static {v0, p1, v1}, Landroid/telephony/AccessNetworkUtils;->convertEarfcnToFrequency(III)I

    move-result v2

    return v2
.end method

.method public static blacklist getFrequencyFromNrArfcn(I)I
    .locals 8
    .param p0, "nrArfcn"    # I

    .line 570
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    .line 571
    const/4 v0, -0x1

    return v0

    .line 574
    :cond_0
    const/4 v0, 0x0

    .line 575
    .local v0, "globalKhz":I
    const/4 v1, 0x0

    .line 576
    .local v1, "rangeOffset":I
    const/4 v2, 0x0

    .line 578
    .local v2, "arfcnOffset":I
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    move-result-object v3

    .line 577
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 579
    .local v6, "nrArfcnFrequency":Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;
    iget v7, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeFirst:I

    if-lt p0, v7, :cond_1

    iget v7, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeLast:I

    if-gt p0, v7, :cond_1

    .line 581
    iget v0, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->globalKhz:I

    .line 582
    iget v1, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeOffset:I

    .line 583
    iget v2, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->arfcnOffset:I

    .line 584
    goto :goto_1

    .line 577
    .end local v6    # "nrArfcnFrequency":Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 587
    :cond_2
    :goto_1
    sub-int v3, p0, v2

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    return v3
.end method

.method public static blacklist getFrequencyFromUarfcn(IIZ)I
    .locals 7
    .param p0, "band"    # I
    .param p1, "uarfcn"    # I
    .param p2, "isUplink"    # Z

    .line 639
    const/4 v0, -0x1

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    .line 640
    return v0

    .line 643
    :cond_0
    const/4 v1, 0x0

    .line 645
    .local v1, "offsetKhz":I
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    move-result-object v2

    .line 644
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 646
    .local v5, "uarfcnFrequency":Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;
    iget v6, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->band:I

    if-ne p0, v6, :cond_3

    .line 647
    invoke-static {p1, v5, p2}, Landroid/telephony/AccessNetworkUtils;->isInUarfcnRange(ILandroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 648
    if-eqz p2, :cond_1

    iget v0, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkOffset:I

    goto :goto_1

    .line 649
    :cond_1
    iget v0, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkOffset:I

    :goto_1
    move v1, v0

    .line 650
    goto :goto_2

    .line 652
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Band and the range of UARFCN are not consistent: band = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,uarfcn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,isUplink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessNetworkUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return v0

    .line 644
    .end local v5    # "uarfcnFrequency":Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 659
    :cond_4
    :goto_2
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 660
    invoke-static {v1, p1}, Landroid/telephony/AccessNetworkUtils;->convertUarfcnToFrequency(II)I

    move-result v0

    return v0

    .line 662
    :cond_5
    invoke-static {p0, p1}, Landroid/telephony/AccessNetworkUtils;->convertUarfcnTddToFrequency(II)I

    move-result v0

    return v0
.end method

.method public static blacklist getFrequencyRangeFromArfcn(I)I
    .locals 2
    .param p0, "frequency"    # I

    .line 756
    const v0, 0xf4240

    if-ge p0, v0, :cond_0

    .line 757
    const/4 v0, 0x1

    return v0

    .line 758
    :cond_0
    const v1, 0x2dc6c0

    if-ge p0, v1, :cond_1

    if-lt p0, v0, :cond_1

    .line 760
    const/4 v0, 0x2

    return v0

    .line 761
    :cond_1
    const v0, 0x5b8d80

    if-ge p0, v0, :cond_2

    if-lt p0, v1, :cond_2

    .line 763
    const/4 v0, 0x3

    return v0

    .line 765
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist getFrequencyRangeGroupFromEutranBand(I)I
    .locals 1
    .param p0, "band"    # I

    .line 425
    packed-switch p0, :pswitch_data_0

    .line 490
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 488
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 450
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 479
    :pswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static blacklist getFrequencyRangeGroupFromGeranBand(I)I
    .locals 1
    .param p0, "band"    # I

    .line 359
    packed-switch p0, :pswitch_data_0

    .line 377
    const/4 v0, 0x0

    return v0

    .line 375
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 372
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist getFrequencyRangeGroupFromNrBand(I)I
    .locals 1
    .param p0, "band"    # I

    .line 500
    sparse-switch p0, :sswitch_data_0

    .line 559
    const/4 v0, 0x0

    return v0

    .line 557
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 551
    :sswitch_1
    const/4 v0, 0x3

    return v0

    .line 515
    :sswitch_2
    const/4 v0, 0x1

    return v0

    .line 545
    :sswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0xc -> :sswitch_2
        0xe -> :sswitch_2
        0x12 -> :sswitch_2
        0x14 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1c -> :sswitch_2
        0x1d -> :sswitch_2
        0x1e -> :sswitch_3
        0x22 -> :sswitch_3
        0x26 -> :sswitch_3
        0x27 -> :sswitch_3
        0x28 -> :sswitch_3
        0x29 -> :sswitch_3
        0x2e -> :sswitch_1
        0x30 -> :sswitch_1
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x35 -> :sswitch_3
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x46 -> :sswitch_3
        0x47 -> :sswitch_2
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
        0x4c -> :sswitch_3
        0x4d -> :sswitch_1
        0x4e -> :sswitch_1
        0x4f -> :sswitch_1
        0x50 -> :sswitch_3
        0x51 -> :sswitch_2
        0x52 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
        0x56 -> :sswitch_3
        0x59 -> :sswitch_2
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x5c -> :sswitch_3
        0x5d -> :sswitch_3
        0x5e -> :sswitch_3
        0x5f -> :sswitch_3
        0x60 -> :sswitch_0
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x104 -> :sswitch_0
        0x105 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getFrequencyRangeGroupFromUtranBand(I)I
    .locals 1
    .param p0, "band"    # I

    .line 385
    sparse-switch p0, :sswitch_data_0

    .line 416
    const/4 v0, 0x0

    return v0

    .line 414
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 395
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 412
    :sswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_0
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
    .end sparse-switch
.end method

.method public static blacklist getOperatingBandForArfcn(I)I
    .locals 2
    .param p0, "arfcn"    # I

    .line 243
    const/16 v0, 0xa

    if-ltz p0, :cond_0

    const/16 v1, 0x7c

    if-gt p0, v1, :cond_0

    .line 244
    return v0

    .line 245
    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_1

    const/16 v1, 0xfb

    if-gt p0, v1, :cond_1

    .line 246
    const/16 v0, 0x8

    return v0

    .line 247
    :cond_1
    const/16 v1, 0x103

    if-lt p0, v1, :cond_2

    const/16 v1, 0x125

    if-gt p0, v1, :cond_2

    .line 248
    const/4 v0, 0x3

    return v0

    .line 249
    :cond_2
    const/16 v1, 0x132

    if-lt p0, v1, :cond_3

    const/16 v1, 0x154

    if-gt p0, v1, :cond_3

    .line 250
    const/4 v0, 0x4

    return v0

    .line 251
    :cond_3
    const/16 v1, 0x1b6

    if-lt p0, v1, :cond_4

    const/16 v1, 0x1ff

    if-gt p0, v1, :cond_4

    .line 252
    const/4 v0, 0x6

    return v0

    .line 253
    :cond_4
    const/16 v1, 0x200

    if-lt p0, v1, :cond_5

    const/16 v1, 0x375

    if-gt p0, v1, :cond_5

    .line 256
    const/16 v0, 0xc

    return v0

    .line 257
    :cond_5
    const/16 v1, 0x3ac

    if-lt p0, v1, :cond_6

    const/16 v1, 0x3ce

    if-gt p0, v1, :cond_6

    .line 258
    const/16 v0, 0xe

    return v0

    .line 259
    :cond_6
    const/16 v1, 0x3cf

    if-lt p0, v1, :cond_7

    const/16 v1, 0x3ff

    if-gt p0, v1, :cond_7

    .line 260
    return v0

    .line 262
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o getOperatingBandForEarfcn(I)I
    .locals 2
    .param p0, "earfcn"    # I

    .line 91
    const/4 v0, -0x1

    const v1, 0x113f5

    if-le p0, v1, :cond_0

    .line 92
    return v0

    .line 93
    :cond_0
    const v1, 0x113c4

    if-lt p0, v1, :cond_1

    .line 94
    const/16 v0, 0x58

    return v0

    .line 95
    :cond_1
    const v1, 0x11392

    if-lt p0, v1, :cond_2

    .line 96
    const/16 v0, 0x57

    return v0

    .line 97
    :cond_2
    const v1, 0x112de

    if-lt p0, v1, :cond_3

    .line 98
    const/16 v0, 0x55

    return v0

    .line 99
    :cond_3
    const v1, 0x10f59

    if-le p0, v1, :cond_4

    .line 100
    return v0

    .line 101
    :cond_4
    const v1, 0x10dac

    if-lt p0, v1, :cond_5

    .line 102
    const/16 v0, 0x4a

    return v0

    .line 103
    :cond_5
    const v1, 0x10d7a

    if-lt p0, v1, :cond_6

    .line 104
    const/16 v0, 0x49

    return v0

    .line 105
    :cond_6
    const v1, 0x10d48

    if-lt p0, v1, :cond_7

    .line 106
    const/16 v0, 0x48

    return v0

    .line 107
    :cond_7
    const v1, 0x10bea

    if-lt p0, v1, :cond_8

    .line 108
    const/16 v0, 0x47

    return v0

    .line 109
    :cond_8
    const v1, 0x10af0

    if-lt p0, v1, :cond_9

    .line 110
    const/16 v0, 0x46

    return v0

    .line 111
    :cond_9
    const v1, 0x108fb

    if-le p0, v1, :cond_a

    .line 112
    return v0

    .line 113
    :cond_a
    const v1, 0x107d0

    if-lt p0, v1, :cond_b

    .line 114
    const/16 v0, 0x44

    return v0

    .line 115
    :cond_b
    const v1, 0x10726

    if-lt p0, v1, :cond_c

    .line 116
    return v0

    .line 117
    :cond_c
    const v1, 0x10384

    if-lt p0, v1, :cond_d

    .line 118
    const/16 v0, 0x42

    return v0

    .line 119
    :cond_d
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_e

    .line 120
    const/16 v0, 0x41

    return v0

    .line 121
    :cond_e
    const v1, 0xeb5e

    if-le p0, v1, :cond_f

    .line 122
    return v0

    .line 123
    :cond_f
    const v1, 0xeaec

    if-lt p0, v1, :cond_10

    .line 124
    const/16 v0, 0x35

    return v0

    .line 125
    :cond_10
    const v1, 0xe704

    if-lt p0, v1, :cond_11

    .line 126
    const/16 v0, 0x34

    return v0

    .line 127
    :cond_11
    const v1, 0xe6d2

    if-lt p0, v1, :cond_12

    .line 128
    const/16 v0, 0x33

    return v0

    .line 129
    :cond_12
    const v1, 0xe380

    if-lt p0, v1, :cond_13

    .line 130
    const/16 v0, 0x32

    return v0

    .line 131
    :cond_13
    const v1, 0xdda4

    if-lt p0, v1, :cond_14

    .line 132
    const/16 v0, 0x31

    return v0

    .line 133
    :cond_14
    const v1, 0xd7c8

    if-lt p0, v1, :cond_15

    .line 134
    const/16 v0, 0x30

    return v0

    .line 135
    :cond_15
    const v1, 0xd50c

    if-lt p0, v1, :cond_16

    .line 136
    const/16 v0, 0x2f

    return v0

    .line 137
    :cond_16
    const v1, 0xb6c6

    if-lt p0, v1, :cond_17

    .line 138
    const/16 v0, 0x2e

    return v0

    .line 139
    :cond_17
    const v1, 0xb5fe

    if-lt p0, v1, :cond_18

    .line 140
    const/16 v0, 0x2d

    return v0

    .line 141
    :cond_18
    const v1, 0xb216

    if-lt p0, v1, :cond_19

    .line 142
    const/16 v0, 0x2c

    return v0

    .line 143
    :cond_19
    const v1, 0xaa46

    if-lt p0, v1, :cond_1a

    .line 144
    const/16 v0, 0x2b

    return v0

    .line 145
    :cond_1a
    const v1, 0xa276

    if-lt p0, v1, :cond_1b

    .line 146
    const/16 v0, 0x2a

    return v0

    .line 147
    :cond_1b
    const v1, 0x9ae2

    if-lt p0, v1, :cond_1c

    .line 148
    const/16 v0, 0x29

    return v0

    .line 149
    :cond_1c
    const v1, 0x96fa

    if-lt p0, v1, :cond_1d

    .line 150
    const/16 v0, 0x28

    return v0

    .line 151
    :cond_1d
    const v1, 0x956a

    if-lt p0, v1, :cond_1e

    .line 152
    const/16 v0, 0x27

    return v0

    .line 153
    :cond_1e
    const v1, 0x9376

    if-lt p0, v1, :cond_1f

    .line 154
    const/16 v0, 0x26

    return v0

    .line 155
    :cond_1f
    const v1, 0x92ae

    if-lt p0, v1, :cond_20

    .line 156
    const/16 v0, 0x25

    return v0

    .line 157
    :cond_20
    const v1, 0x9056

    if-lt p0, v1, :cond_21

    .line 158
    const/16 v0, 0x24

    return v0

    .line 159
    :cond_21
    const v1, 0x8dfe

    if-lt p0, v1, :cond_22

    .line 160
    const/16 v0, 0x23

    return v0

    .line 161
    :cond_22
    const v1, 0x8d68

    if-lt p0, v1, :cond_23

    .line 162
    const/16 v0, 0x22

    return v0

    .line 163
    :cond_23
    const v1, 0x8ca0

    if-lt p0, v1, :cond_24

    .line 164
    const/16 v0, 0x21

    return v0

    .line 165
    :cond_24
    const/16 v1, 0x2877

    if-le p0, v1, :cond_25

    .line 166
    return v0

    .line 167
    :cond_25
    const/16 v1, 0x26c0

    if-lt p0, v1, :cond_26

    .line 168
    return v0

    .line 169
    :cond_26
    const/16 v1, 0x268e

    if-lt p0, v1, :cond_27

    .line 170
    const/16 v0, 0x1f

    return v0

    .line 171
    :cond_27
    const/16 v1, 0x262a

    if-lt p0, v1, :cond_28

    .line 172
    const/16 v0, 0x1e

    return v0

    .line 173
    :cond_28
    const/16 v1, 0x25bc

    if-lt p0, v1, :cond_29

    .line 174
    return v0

    .line 175
    :cond_29
    const/16 v1, 0x23fa

    if-lt p0, v1, :cond_2a

    .line 176
    const/16 v0, 0x1c

    return v0

    .line 177
    :cond_2a
    const/16 v1, 0x2350

    if-lt p0, v1, :cond_2b

    .line 178
    const/16 v0, 0x1b

    return v0

    .line 179
    :cond_2b
    const/16 v1, 0x21f2

    if-lt p0, v1, :cond_2c

    .line 180
    const/16 v0, 0x1a

    return v0

    .line 181
    :cond_2c
    const/16 v1, 0x1f68

    if-lt p0, v1, :cond_2d

    .line 182
    const/16 v0, 0x19

    return v0

    .line 183
    :cond_2d
    const/16 v1, 0x1e14

    if-lt p0, v1, :cond_2e

    .line 184
    const/16 v0, 0x18

    return v0

    .line 185
    :cond_2e
    const/16 v1, 0x1d4c

    if-lt p0, v1, :cond_2f

    .line 186
    const/16 v0, 0x17

    return v0

    .line 187
    :cond_2f
    const/16 v1, 0x19c8

    if-lt p0, v1, :cond_30

    .line 188
    const/16 v0, 0x16

    return v0

    .line 189
    :cond_30
    const/16 v1, 0x1932

    if-lt p0, v1, :cond_31

    .line 190
    const/16 v0, 0x15

    return v0

    .line 191
    :cond_31
    const/16 v1, 0x1806

    if-lt p0, v1, :cond_32

    .line 192
    const/16 v0, 0x14

    return v0

    .line 193
    :cond_32
    const/16 v1, 0x1770

    if-lt p0, v1, :cond_33

    .line 194
    const/16 v0, 0x13

    return v0

    .line 195
    :cond_33
    const/16 v1, 0x16da

    if-lt p0, v1, :cond_34

    .line 196
    const/16 v0, 0x12

    return v0

    .line 197
    :cond_34
    const/16 v1, 0x1662

    if-lt p0, v1, :cond_35

    .line 198
    const/16 v0, 0x11

    return v0

    .line 199
    :cond_35
    const/16 v1, 0x1503

    if-le p0, v1, :cond_36

    .line 200
    return v0

    .line 201
    :cond_36
    const/16 v1, 0x14a0

    if-lt p0, v1, :cond_37

    .line 202
    const/16 v0, 0xe

    return v0

    .line 203
    :cond_37
    const/16 v1, 0x143c

    if-lt p0, v1, :cond_38

    .line 204
    const/16 v0, 0xd

    return v0

    .line 205
    :cond_38
    const/16 v1, 0x1392

    if-lt p0, v1, :cond_39

    .line 206
    const/16 v0, 0xc

    return v0

    .line 207
    :cond_39
    const/16 v1, 0x128e

    if-lt p0, v1, :cond_3a

    .line 208
    const/16 v0, 0xb

    return v0

    .line 209
    :cond_3a
    const/16 v1, 0x1036

    if-lt p0, v1, :cond_3b

    .line 210
    const/16 v0, 0xa

    return v0

    .line 211
    :cond_3b
    const/16 v1, 0xed8

    if-lt p0, v1, :cond_3c

    .line 212
    const/16 v0, 0x9

    return v0

    .line 213
    :cond_3c
    const/16 v1, 0xd7a

    if-lt p0, v1, :cond_3d

    .line 214
    const/16 v0, 0x8

    return v0

    .line 215
    :cond_3d
    const/16 v1, 0xabe

    if-lt p0, v1, :cond_3e

    .line 216
    const/4 v0, 0x7

    return v0

    .line 217
    :cond_3e
    const/16 v1, 0xa5a

    if-lt p0, v1, :cond_3f

    .line 218
    const/4 v0, 0x6

    return v0

    .line 219
    :cond_3f
    const/16 v1, 0x960

    if-lt p0, v1, :cond_40

    .line 220
    const/4 v0, 0x5

    return v0

    .line 221
    :cond_40
    const/16 v1, 0x79e

    if-lt p0, v1, :cond_41

    .line 222
    const/4 v0, 0x4

    return v0

    .line 223
    :cond_41
    const/16 v1, 0x4b0

    if-lt p0, v1, :cond_42

    .line 224
    const/4 v0, 0x3

    return v0

    .line 225
    :cond_42
    const/16 v1, 0x258

    if-lt p0, v1, :cond_43

    .line 226
    const/4 v0, 0x2

    return v0

    .line 227
    :cond_43
    if-ltz p0, :cond_44

    .line 228
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_44
    return v0
.end method

.method public static blacklist getOperatingBandForUarfcn(I)I
    .locals 16
    .param p0, "uarfcn"    # I

    .line 275
    move/from16 v0, p0

    const/16 v1, 0xc

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 276
    .local v2, "addlBand2":[I
    const/16 v3, 0x9

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    .line 277
    .local v4, "addlBand4":[I
    const/4 v5, 0x6

    new-array v6, v5, [I

    fill-array-data v6, :array_2

    .line 278
    .local v6, "addlBand5":[I
    const/4 v7, 0x2

    new-array v8, v7, [I

    fill-array-data v8, :array_3

    .line 279
    .local v8, "addlBand6":[I
    const/16 v9, 0xe

    new-array v10, v9, [I

    fill-array-data v10, :array_4

    .line 282
    .local v10, "addlBand7":[I
    new-array v11, v1, [I

    fill-array-data v11, :array_5

    .line 284
    .local v11, "addlBand10":[I
    const/4 v12, 0x5

    new-array v13, v12, [I

    fill-array-data v13, :array_6

    .line 285
    .local v13, "addlBand12":[I
    new-array v14, v7, [I

    fill-array-data v14, :array_7

    .line 286
    .local v14, "addlBand13":[I
    new-array v15, v7, [I

    fill-array-data v15, :array_8

    .line 287
    .local v15, "addlBand14":[I
    const/4 v9, 0x3

    new-array v1, v9, [I

    fill-array-data v1, :array_9

    .line 288
    .local v1, "addlBand19":[I
    const/16 v3, 0xd

    new-array v12, v3, [I

    fill-array-data v12, :array_a

    .line 290
    .local v12, "addlBand25":[I
    const/16 v3, 0xb

    new-array v5, v3, [I

    fill-array-data v5, :array_b

    .line 292
    .local v5, "addlBand26":[I
    const/16 v3, 0x2942

    if-lt v0, v3, :cond_0

    const/16 v3, 0x2a56

    if-gt v0, v3, :cond_0

    .line 293
    const/4 v3, 0x1

    return v3

    .line 294
    :cond_0
    const/16 v3, 0x25be

    if-lt v0, v3, :cond_1

    const/16 v3, 0x26d2

    if-le v0, v3, :cond_2

    .line 295
    :cond_1
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_3

    .line 296
    :cond_2
    return v7

    .line 297
    :cond_3
    const/16 v3, 0x48a

    if-lt v0, v3, :cond_4

    const/16 v3, 0x5e9

    if-gt v0, v3, :cond_4

    .line 298
    return v9

    .line 299
    :cond_4
    const/16 v3, 0x601

    if-lt v0, v3, :cond_5

    const/16 v3, 0x6ca

    if-le v0, v3, :cond_6

    .line 300
    :cond_5
    invoke-static {v4, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_7

    .line 301
    :cond_6
    const/4 v3, 0x4

    return v3

    .line 302
    :cond_7
    const/16 v3, 0x1123

    if-lt v0, v3, :cond_9

    const/16 v3, 0x113d

    if-gt v0, v3, :cond_9

    .line 304
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "country":Ljava/lang/String;
    const-string/jumbo v7, "jp"

    invoke-virtual {v7, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_8

    .line 306
    const/4 v7, 0x6

    return v7

    .line 308
    :cond_8
    const/4 v7, 0x5

    return v7

    .line 310
    .end local v3    # "country":Ljava/lang/String;
    :cond_9
    const/16 v3, 0x1105

    if-lt v0, v3, :cond_a

    const/16 v3, 0x116a

    if-le v0, v3, :cond_b

    .line 311
    :cond_a
    invoke-static {v6, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_c

    .line 312
    :cond_b
    const/4 v3, 0x5

    return v3

    .line 313
    :cond_c
    invoke-static {v8, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_d

    .line 314
    const/4 v3, 0x6

    return v3

    .line 315
    :cond_d
    const/16 v3, 0x8bd

    if-lt v0, v3, :cond_e

    const/16 v3, 0xa03

    if-le v0, v3, :cond_f

    .line 316
    :cond_e
    invoke-static {v10, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_10

    .line 317
    :cond_f
    const/4 v3, 0x7

    return v3

    .line 318
    :cond_10
    const/16 v3, 0xb79

    if-lt v0, v3, :cond_11

    const/16 v3, 0xc10

    if-gt v0, v3, :cond_11

    .line 319
    const/16 v3, 0x8

    return v3

    .line 320
    :cond_11
    const/16 v3, 0x2415

    if-lt v0, v3, :cond_12

    const/16 v3, 0x24ab

    if-gt v0, v3, :cond_12

    .line 321
    const/16 v3, 0x9

    return v3

    .line 322
    :cond_12
    const/16 v3, 0xc28

    if-lt v0, v3, :cond_13

    const/16 v3, 0xd3c

    if-le v0, v3, :cond_14

    .line 323
    :cond_13
    invoke-static {v11, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_15

    .line 324
    :cond_14
    const/16 v3, 0xa

    return v3

    .line 325
    :cond_15
    const/16 v3, 0xe80

    if-lt v0, v3, :cond_16

    const/16 v3, 0xecb

    if-gt v0, v3, :cond_16

    .line 326
    const/16 v3, 0xb

    return v3

    .line 327
    :cond_16
    const/16 v3, 0xf02

    if-lt v0, v3, :cond_17

    const/16 v3, 0xf3f

    if-le v0, v3, :cond_18

    .line 328
    :cond_17
    invoke-static {v13, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_19

    .line 329
    :cond_18
    const/16 v3, 0xc

    return v3

    .line 330
    :cond_19
    const/16 v3, 0xfb1

    if-lt v0, v3, :cond_1a

    const/16 v3, 0xfcb

    if-le v0, v3, :cond_1b

    .line 331
    :cond_1a
    invoke-static {v14, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_1c

    .line 332
    :cond_1b
    const/16 v3, 0xd

    return v3

    .line 333
    :cond_1c
    const/16 v3, 0x1015

    if-lt v0, v3, :cond_1d

    const/16 v3, 0x102f

    if-le v0, v3, :cond_1e

    .line 334
    :cond_1d
    invoke-static {v15, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_1f

    .line 335
    :cond_1e
    const/16 v3, 0xe

    return v3

    .line 336
    :cond_1f
    const/16 v3, 0x2c8

    if-lt v0, v3, :cond_20

    const/16 v3, 0x2fb

    if-le v0, v3, :cond_21

    .line 337
    :cond_20
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_22

    .line 338
    :cond_21
    const/16 v3, 0x13

    return v3

    .line 339
    :cond_22
    const/16 v3, 0x11a0

    if-lt v0, v3, :cond_23

    const/16 v3, 0x121e

    if-gt v0, v3, :cond_23

    .line 340
    const/16 v3, 0x14

    return v3

    .line 341
    :cond_23
    const/16 v3, 0x35e

    if-lt v0, v3, :cond_24

    const/16 v3, 0x390

    if-gt v0, v3, :cond_24

    .line 342
    const/16 v3, 0x15

    return v3

    .line 343
    :cond_24
    const/16 v3, 0x1236

    if-lt v0, v3, :cond_25

    const/16 v3, 0x13ae

    if-gt v0, v3, :cond_25

    .line 344
    const/16 v3, 0x16

    return v3

    .line 345
    :cond_25
    const/16 v3, 0x13f8

    if-lt v0, v3, :cond_26

    const/16 v3, 0x1525

    if-le v0, v3, :cond_27

    .line 346
    :cond_26
    invoke-static {v12, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_28

    .line 347
    :cond_27
    const/16 v3, 0x19

    return v3

    .line 348
    :cond_28
    const/16 v3, 0x1682

    if-lt v0, v3, :cond_29

    const/16 v3, 0x1719

    if-le v0, v3, :cond_2a

    .line 349
    :cond_29
    invoke-static {v5, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_2b

    .line 350
    :cond_2a
    const/16 v3, 0x1a

    return v3

    .line 352
    :cond_2b
    const/4 v3, -0x1

    return v3

    :array_0
    .array-data 4
        0x19c
        0x1b5
        0x1ce
        0x1e7
        0x200
        0x219
        0x232
        0x24b
        0x264
        0x27d
        0x296
        0x2af
    .end array-data

    :array_1
    .array-data 4
        0x75f
        0x778
        0x791
        0x7aa
        0x7c3
        0x7dc
        0x7f5
        0x80e
        0x827
    .end array-data

    :array_2
    .array-data 4
        0x3ef
        0x3f4
        0x408
        0x40d
        0x426
        0x43f
    .end array-data

    :array_3
    .array-data 4
        0x40d
        0x426
    .end array-data

    :array_4
    .array-data 4
        0xa1b
        0xa34
        0xa4d
        0xa66
        0xa7f
        0xa98
        0xab1
        0xaca
        0xae3
        0xafc
        0xb15
        0xb2e
        0xb47
        0xb60
    .end array-data

    :array_5
    .array-data 4
        0xd54
        0xd6d
        0xd86
        0xd9f
        0xdb8
        0xdd1
        0xdea
        0xe03
        0xe1c
        0xe35
        0xe4e
        0xe67
    .end array-data

    :array_6
    .array-data 4
        0xf5c
        0xf75
        0xf7a
        0xf93
        0xf98
    .end array-data

    :array_7
    .array-data 4
        0xfe3
        0xffc
    .end array-data

    :array_8
    .array-data 4
        0x1047
        0x1060
    .end array-data

    :array_9
    .array-data 4
        0x313
        0x32c
        0x345
    .end array-data

    :array_a
    .array-data 4
        0x1894
        0x18ad
        0x18c6
        0x18df
        0x18f8
        0x1911
        0x192a
        0x1943
        0x195c
        0x1975
        0x198e
        0x19a7
        0x19c0
    .end array-data

    :array_b
    .array-data 4
        0x1731
        0x174a
        0x1763
        0x1768
        0x177c
        0x1781
        0x1795
        0x179a
        0x17ae
        0x17b3
        0x17c7
    .end array-data
.end method

.method private static blacklist isInEarfcnRange(ILandroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;Z)Z
    .locals 3
    .param p0, "earfcn"    # I
    .param p1, "earfcnFrequency"    # Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;
    .param p2, "isUplink"    # Z

    .line 626
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 627
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkOffset:I

    if-lt p0, v2, :cond_0

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkRange:I

    if-gt p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 629
    :cond_1
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkOffset:I

    if-lt p0, v2, :cond_2

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkRange:I

    if-gt p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private static blacklist isInUarfcnRange(ILandroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;Z)Z
    .locals 3
    .param p0, "uarfcn"    # I
    .param p1, "uarfcnFrequency"    # Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;
    .param p2, "isUplink"    # Z

    .line 694
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 695
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeFirst:I

    if-lt p0, v2, :cond_0

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeLast:I

    if-gt p0, v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 698
    :cond_1
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeFirst:I

    if-eqz v2, :cond_3

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeLast:I

    if-eqz v2, :cond_3

    .line 699
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeFirst:I

    if-lt p0, v2, :cond_2

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeLast:I

    if-gt p0, v2, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 703
    :cond_3
    return v1
.end method
