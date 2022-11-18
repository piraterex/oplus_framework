.class public final Landroid/hardware/tv/tuner/FrontendCapabilities;
.super Ljava/lang/Object;
.source "FrontendCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendCapabilities$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist analogCaps:I = 0x0

.field public static final blacklist atsc3Caps:I = 0x2

.field public static final blacklist atscCaps:I = 0x1

.field public static final blacklist dtmbCaps:I = 0x3

.field public static final blacklist dvbcCaps:I = 0x5

.field public static final blacklist dvbsCaps:I = 0x4

.field public static final blacklist dvbtCaps:I = 0x6

.field public static final blacklist isdbs3Caps:I = 0x8

.field public static final blacklist isdbsCaps:I = 0x7

.field public static final blacklist isdbtCaps:I = 0x9


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendCapabilities$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    .line 25
    iput-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendCapabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 348
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 351
    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tagString(I)Ljava/lang/String;

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

    .line 370
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    .line 371
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    .line 372
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 354
    packed-switch p1, :pswitch_data_0

    .line 366
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

    .line 364
    :pswitch_0
    const-string v0, "isdbtCaps"

    return-object v0

    .line 363
    :pswitch_1
    const-string v0, "isdbs3Caps"

    return-object v0

    .line 362
    :pswitch_2
    const-string v0, "isdbsCaps"

    return-object v0

    .line 361
    :pswitch_3
    const-string v0, "dvbtCaps"

    return-object v0

    .line 360
    :pswitch_4
    const-string v0, "dvbcCaps"

    return-object v0

    .line 359
    :pswitch_5
    const-string v0, "dvbsCaps"

    return-object v0

    .line 358
    :pswitch_6
    const-string v0, "dtmbCaps"

    return-object v0

    .line 357
    :pswitch_7
    const-string v0, "atsc3Caps"

    return-object v0

    .line 356
    :pswitch_8
    const-string v0, "atscCaps"

    return-object v0

    .line 355
    :pswitch_9
    const-string v0, "analogCaps"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static blacklist analogCaps(Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    .line 44
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atsc3Caps(Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    .line 74
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atscCaps(Landroid/hardware/tv/tuner/FrontendAtscCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    .line 59
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 340
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 341
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 342
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 344
    :cond_1
    return v0
.end method

.method public static blacklist dtmbCaps(Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    .line 89
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbcCaps(Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    .line 119
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbsCaps(Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    .line 104
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbtCaps(Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    .line 134
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs3Caps(Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    .line 164
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbsCaps(Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    .line 149
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbtCaps(Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    .line 179
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 334
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbtCaps()Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 331
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbs3Caps()Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 332
    goto :goto_0

    .line 328
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbsCaps()Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 329
    goto :goto_0

    .line 325
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbtCaps()Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 326
    goto :goto_0

    .line 322
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbcCaps()Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 323
    goto :goto_0

    .line 319
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbsCaps()Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 320
    goto :goto_0

    .line 316
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDtmbCaps()Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 317
    goto :goto_0

    .line 313
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtsc3Caps()Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 314
    goto :goto_0

    .line 310
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtscCaps()Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 311
    goto :goto_0

    .line 307
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAnalogCaps()Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 308
    nop

    .line 337
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public blacklist getAnalogCaps()Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    return-object v0
.end method

.method public blacklist getAtsc3Caps()Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;
    .locals 1

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    return-object v0
.end method

.method public blacklist getAtscCaps()Landroid/hardware/tv/tuner/FrontendAtscCapabilities;
    .locals 1

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    return-object v0
.end method

.method public blacklist getDtmbCaps()Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;
    .locals 1

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    return-object v0
.end method

.method public blacklist getDvbcCaps()Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;
    .locals 1

    .line 123
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 124
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    return-object v0
.end method

.method public blacklist getDvbsCaps()Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;
    .locals 1

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    return-object v0
.end method

.method public blacklist getDvbtCaps()Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
    .locals 1

    .line 138
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 139
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    return-object v0
.end method

.method public blacklist getIsdbs3Caps()Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;
    .locals 1

    .line 168
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 169
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    return-object v0
.end method

.method public blacklist getIsdbsCaps()Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;
    .locals 1

    .line 153
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 154
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    return-object v0
.end method

.method public blacklist getIsdbtCaps()Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;
    .locals 1

    .line 183
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 184
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    return-object v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 38
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 299
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

    .line 295
    :pswitch_0
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    .line 296
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 297
    return-void

    .line 290
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;
    :pswitch_1
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    .line 291
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 292
    return-void

    .line 285
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;
    :pswitch_2
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    .line 286
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 287
    return-void

    .line 280
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;
    :pswitch_3
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    .line 281
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 282
    return-void

    .line 275
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
    :pswitch_4
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    .line 276
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 277
    return-void

    .line 270
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;
    :pswitch_5
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    .line 271
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 272
    return-void

    .line 265
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;
    :pswitch_6
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    .line 266
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 267
    return-void

    .line 260
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;
    :pswitch_7
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    .line 261
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 262
    return-void

    .line 255
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;
    :pswitch_8
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAtscCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    .line 256
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtscCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 257
    return-void

    .line 250
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtscCapabilities;
    :pswitch_9
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    .line 251
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 252
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public blacklist setAnalogCaps(Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public blacklist setAtsc3Caps(Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public blacklist setAtscCaps(Landroid/hardware/tv/tuner/FrontendAtscCapabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public blacklist setDtmbCaps(Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public blacklist setDvbcCaps(Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    .line 128
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public blacklist setDvbsCaps(Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public blacklist setDvbtCaps(Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    .line 143
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public blacklist setIsdbs3Caps(Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    .line 173
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method public blacklist setIsdbsCaps(Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    .line 158
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 159
    return-void
.end method

.method public blacklist setIsdbtCaps(Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    .line 188
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 189
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 209
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbtCaps()Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbs3Caps()Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    goto :goto_0

    .line 233
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbsCaps()Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    goto :goto_0

    .line 230
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbtCaps()Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    goto :goto_0

    .line 227
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbcCaps()Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 228
    goto :goto_0

    .line 224
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbsCaps()Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    goto :goto_0

    .line 221
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDtmbCaps()Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 222
    goto :goto_0

    .line 218
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtsc3Caps()Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_0

    .line 215
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtscCaps()Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto :goto_0

    .line 212
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAnalogCaps()Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    nop

    .line 242
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
