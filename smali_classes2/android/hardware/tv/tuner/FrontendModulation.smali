.class public final Landroid/hardware/tv/tuner/FrontendModulation;
.super Ljava/lang/Object;
.source "FrontendModulation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendModulation$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendModulation;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist atsc:I = 0x6

.field public static final blacklist atsc3:I = 0x7

.field public static final blacklist dtmb:I = 0x8

.field public static final blacklist dvbc:I = 0x0

.field public static final blacklist dvbs:I = 0x1

.field public static final blacklist dvbt:I = 0x2

.field public static final blacklist isdbs:I = 0x3

.field public static final blacklist isdbs3:I = 0x4

.field public static final blacklist isdbt:I = 0x5


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendModulation$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    .line 33
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendModulation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 287
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 290
    return-void

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_tagString(I)Ljava/lang/String;

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

    .line 308
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    .line 309
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    .line 310
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 293
    packed-switch p1, :pswitch_data_0

    .line 304
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

    .line 302
    :pswitch_0
    const-string v0, "dtmb"

    return-object v0

    .line 301
    :pswitch_1
    const-string v0, "atsc3"

    return-object v0

    .line 300
    :pswitch_2
    const-string v0, "atsc"

    return-object v0

    .line 299
    :pswitch_3
    const-string v0, "isdbt"

    return-object v0

    .line 298
    :pswitch_4
    const-string v0, "isdbs3"

    return-object v0

    .line 297
    :pswitch_5
    const-string v0, "isdbs"

    return-object v0

    .line 296
    :pswitch_6
    const-string v0, "dvbt"

    return-object v0

    .line 295
    :pswitch_7
    const-string v0, "dvbs"

    return-object v0

    .line 294
    :pswitch_8
    const-string v0, "dvbc"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static blacklist atsc(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 3
    .param p0, "_value"    # I

    .line 133
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atsc3(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 3
    .param p0, "_value"    # I

    .line 148
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dtmb(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 3
    .param p0, "_value"    # I

    .line 163
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbc(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 3
    .param p0, "_value"    # I

    .line 43
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbs(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 3
    .param p0, "_value"    # I

    .line 58
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbt(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 3
    .param p0, "_value"    # I

    .line 73
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 3
    .param p0, "_value"    # I

    .line 88
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs3(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 3
    .param p0, "_value"    # I

    .line 103
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbt(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 3
    .param p0, "_value"    # I

    .line 118
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    .line 283
    return v0
.end method

.method public blacklist getAtsc()I
    .locals 1

    .line 137
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 138
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getAtsc3()I
    .locals 1

    .line 152
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 153
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDtmb()I
    .locals 1

    .line 167
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 168
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbc()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 48
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbs()I
    .locals 1

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 63
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbt()I
    .locals 1

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 78
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbs()I
    .locals 1

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 93
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbs3()I
    .locals 1

    .line 107
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 108
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbt()I
    .locals 1

    .line 122
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 123
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 37
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 275
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

    .line 271
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 273
    return-void

    .line 266
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 268
    return-void

    .line 261
    .end local v1    # "_aidl_value":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 263
    return-void

    .line 256
    .end local v1    # "_aidl_value":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 258
    return-void

    .line 251
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 253
    return-void

    .line 246
    .end local v1    # "_aidl_value":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 248
    return-void

    .line 241
    .end local v1    # "_aidl_value":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 243
    return-void

    .line 236
    .end local v1    # "_aidl_value":I
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 238
    return-void

    .line 231
    .end local v1    # "_aidl_value":I
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 233
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public blacklist setAtsc(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 143
    return-void
.end method

.method public blacklist setAtsc3(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method public blacklist setDtmb(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 173
    return-void
.end method

.method public blacklist setDvbc(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public blacklist setDvbs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public blacklist setDvbt(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public blacklist setIsdbs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method public blacklist setIsdbs3(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public blacklist setIsdbt(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 128
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 193
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 220
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDtmb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getAtsc3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    goto :goto_0

    .line 214
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getAtsc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto :goto_0

    .line 211
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    goto :goto_0

    .line 208
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbs3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    goto :goto_0

    .line 205
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    goto :goto_0

    .line 202
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    goto :goto_0

    .line 199
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    goto :goto_0

    .line 196
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    nop

    .line 223
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
