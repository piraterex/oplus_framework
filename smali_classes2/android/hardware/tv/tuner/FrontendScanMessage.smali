.class public final Landroid/hardware/tv/tuner/FrontendScanMessage;
.super Ljava/lang/Object;
.source "FrontendScanMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendScanMessage$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendScanMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist analogType:I = 0x6

.field public static final blacklist annex:I = 0xd

.field public static final blacklist atsc3PlpInfos:I = 0xb

.field public static final blacklist dvbtCellIds:I = 0xf

.field public static final blacklist frequencies:I = 0x3

.field public static final blacklist groupIds:I = 0x8

.field public static final blacklist hierarchy:I = 0x5

.field public static final blacklist inputStreamIds:I = 0x9

.field public static final blacklist isEnd:I = 0x1

.field public static final blacklist isHighPriority:I = 0xe

.field public static final blacklist isLocked:I = 0x0

.field public static final blacklist modulation:I = 0xc

.field public static final blacklist plpIds:I = 0x7

.field public static final blacklist progressPercent:I = 0x2

.field public static final blacklist std:I = 0xa

.field public static final blacklist symbolRates:I = 0x4


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 292
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendScanMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendScanMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    .line 40
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendScanMessage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 478
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 481
    return-void

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 506
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    .line 507
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    .line 508
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 484
    packed-switch p1, :pswitch_data_0

    .line 502
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :pswitch_0
    const-string v0, "dvbtCellIds"

    return-object v0

    .line 499
    :pswitch_1
    const-string v0, "isHighPriority"

    return-object v0

    .line 498
    :pswitch_2
    const-string v0, "annex"

    return-object v0

    .line 497
    :pswitch_3
    const-string v0, "modulation"

    return-object v0

    .line 496
    :pswitch_4
    const-string v0, "atsc3PlpInfos"

    return-object v0

    .line 495
    :pswitch_5
    const-string v0, "std"

    return-object v0

    .line 494
    :pswitch_6
    const-string v0, "inputStreamIds"

    return-object v0

    .line 493
    :pswitch_7
    const-string v0, "groupIds"

    return-object v0

    .line 492
    :pswitch_8
    const-string v0, "plpIds"

    return-object v0

    .line 491
    :pswitch_9
    const-string v0, "analogType"

    return-object v0

    .line 490
    :pswitch_a
    const-string v0, "hierarchy"

    return-object v0

    .line 489
    :pswitch_b
    const-string v0, "symbolRates"

    return-object v0

    .line 488
    :pswitch_c
    const-string v0, "frequencies"

    return-object v0

    .line 487
    :pswitch_d
    const-string v0, "progressPercent"

    return-object v0

    .line 486
    :pswitch_e
    const-string v0, "isEnd"

    return-object v0

    .line 485
    :pswitch_f
    const-string v0, "isLocked"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist analogType(I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 3
    .param p0, "_value"    # I

    .line 140
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist annex(B)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 3
    .param p0, "_value"    # B

    .line 245
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atsc3PlpInfos([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 215
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 463
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 464
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 467
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 466
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_1
    return v1

    .line 471
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 472
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 474
    :cond_3
    return v0
.end method

.method public static blacklist dvbtCellIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 2
    .param p0, "_value"    # [I

    .line 275
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist frequencies([J)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 2
    .param p0, "_value"    # [J

    .line 95
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist groupIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 2
    .param p0, "_value"    # [I

    .line 170
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hierarchy(I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 3
    .param p0, "_value"    # I

    .line 125
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist inputStreamIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 2
    .param p0, "_value"    # [I

    .line 185
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isEnd(Z)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 3
    .param p0, "_value"    # Z

    .line 65
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isHighPriority(Z)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 3
    .param p0, "_value"    # Z

    .line 260
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLocked(Z)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 3
    .param p0, "_value"    # Z

    .line 50
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist modulation(Landroid/hardware/tv/tuner/FrontendModulation;)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendModulation;

    .line 230
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist plpIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 2
    .param p0, "_value"    # [I

    .line 155
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist progressPercent(I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 3
    .param p0, "_value"    # I

    .line 80
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist std(Landroid/hardware/tv/tuner/FrontendScanMessageStandard;)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    .line 200
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist symbolRates([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .locals 2
    .param p0, "_value"    # [I

    .line 110
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 457
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getModulation()Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 454
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAtsc3PlpInfos()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 455
    goto :goto_0

    .line 451
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getStd()Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 452
    nop

    .line 460
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAnalogType()I
    .locals 1

    .line 144
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 145
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getAnnex()B
    .locals 1

    .line 249
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 250
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getAtsc3PlpInfos()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    .locals 1

    .line 219
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 220
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    return-object v0
.end method

.method public blacklist getDvbtCellIds()[I
    .locals 1

    .line 279
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 280
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getFrequencies()[J
    .locals 1

    .line 99
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 100
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public blacklist getGroupIds()[I
    .locals 1

    .line 174
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 175
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getHierarchy()I
    .locals 1

    .line 129
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 130
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInputStreamIds()[I
    .locals 1

    .line 189
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 190
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getIsEnd()Z
    .locals 1

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 70
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsHighPriority()Z
    .locals 1

    .line 264
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 265
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsLocked()Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 55
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getModulation()Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 1

    .line 234
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 235
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendModulation;

    return-object v0
.end method

.method public blacklist getPlpIds()[I
    .locals 1

    .line 159
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 160
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getProgressPercent()I
    .locals 1

    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 85
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStd()Landroid/hardware/tv/tuner/FrontendScanMessageStandard;
    .locals 1

    .line 204
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 205
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    return-object v0
.end method

.method public blacklist getSymbolRates()[I
    .locals 1

    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 115
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 44
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 443
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 440
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 441
    return-void

    .line 434
    .end local v1    # "_aidl_value":[I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 435
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 436
    return-void

    .line 429
    .end local v1    # "_aidl_value":Z
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 430
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 431
    return-void

    .line 424
    .end local v1    # "_aidl_value":B
    :pswitch_3
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendModulation;

    .line 425
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendModulation;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 426
    return-void

    .line 419
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendModulation;
    :pswitch_4
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 420
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 421
    return-void

    .line 414
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    :pswitch_5
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanMessageStandard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    .line 415
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendScanMessageStandard;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 416
    return-void

    .line 409
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendScanMessageStandard;
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 410
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 411
    return-void

    .line 404
    .end local v1    # "_aidl_value":[I
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 405
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 406
    return-void

    .line 399
    .end local v1    # "_aidl_value":[I
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 400
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 401
    return-void

    .line 394
    .end local v1    # "_aidl_value":[I
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 396
    return-void

    .line 389
    .end local v1    # "_aidl_value":I
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 390
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 391
    return-void

    .line 384
    .end local v1    # "_aidl_value":I
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 385
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 386
    return-void

    .line 379
    .end local v1    # "_aidl_value":[I
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 380
    .local v1, "_aidl_value":[J
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 381
    return-void

    .line 374
    .end local v1    # "_aidl_value":[J
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 376
    return-void

    .line 369
    .end local v1    # "_aidl_value":I
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 370
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 371
    return-void

    .line 364
    .end local v1    # "_aidl_value":Z
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 365
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 366
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setAnalogType(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method public blacklist setAnnex(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 254
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 255
    return-void
.end method

.method public blacklist setAtsc3PlpInfos([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 224
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 225
    return-void
.end method

.method public blacklist setDvbtCellIds([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 284
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 285
    return-void
.end method

.method public blacklist setFrequencies([J)V
    .locals 1
    .param p1, "_value"    # [J

    .line 104
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method public blacklist setGroupIds([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 179
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 180
    return-void
.end method

.method public blacklist setHierarchy(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method public blacklist setInputStreamIds([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 194
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 195
    return-void
.end method

.method public blacklist setIsEnd(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public blacklist setIsHighPriority(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 269
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 270
    return-void
.end method

.method public blacklist setIsLocked(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public blacklist setModulation(Landroid/hardware/tv/tuner/FrontendModulation;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendModulation;

    .line 239
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 240
    return-void
.end method

.method public blacklist setPlpIds([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 164
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method public blacklist setProgressPercent(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public blacklist setStd(Landroid/hardware/tv/tuner/FrontendScanMessageStandard;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    .line 209
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 210
    return-void
.end method

.method public blacklist setSymbolRates([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 119
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 305
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 353
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getDvbtCellIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 350
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getIsHighPriority()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 351
    goto/16 :goto_0

    .line 347
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAnnex()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 348
    goto/16 :goto_0

    .line 344
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getModulation()Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 345
    goto :goto_0

    .line 341
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAtsc3PlpInfos()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 342
    goto :goto_0

    .line 338
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getStd()Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 339
    goto :goto_0

    .line 335
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getInputStreamIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 336
    goto :goto_0

    .line 332
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getGroupIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 333
    goto :goto_0

    .line 329
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getPlpIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 330
    goto :goto_0

    .line 326
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAnalogType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    goto :goto_0

    .line 323
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getHierarchy()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    goto :goto_0

    .line 320
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getSymbolRates()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 321
    goto :goto_0

    .line 317
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getFrequencies()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 318
    goto :goto_0

    .line 314
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getProgressPercent()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    goto :goto_0

    .line 311
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getIsEnd()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    goto :goto_0

    .line 308
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getIsLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 309
    nop

    .line 356
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
