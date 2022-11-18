.class public final Landroid/hardware/tv/tuner/FrontendInterleaveMode;
.super Ljava/lang/Object;
.source "FrontendInterleaveMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendInterleaveMode$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendInterleaveMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist atsc3:I = 0x0

.field public static final blacklist dtmb:I = 0x2

.field public static final blacklist dvbc:I = 0x1

.field public static final blacklist isdbt:I = 0x3


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Landroid/hardware/tv/tuner/FrontendInterleaveMode$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_tag:I

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_value:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_tag:I

    .line 28
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_value:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendInterleaveMode-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 167
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 170
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_tagString(I)Ljava/lang/String;

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

    .line 183
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_tag:I

    .line 184
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_value:Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 179
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

    .line 177
    :pswitch_0
    const-string v0, "isdbt"

    return-object v0

    .line 176
    :pswitch_1
    const-string v0, "dtmb"

    return-object v0

    .line 175
    :pswitch_2
    const-string v0, "dvbc"

    return-object v0

    .line 174
    :pswitch_3
    const-string v0, "atsc3"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist atsc3(I)Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    .locals 3
    .param p0, "_value"    # I

    .line 38
    new-instance v0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dtmb(I)Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    .locals 3
    .param p0, "_value"    # I

    .line 68
    new-instance v0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbc(I)Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    .locals 3
    .param p0, "_value"    # I

    .line 53
    new-instance v0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbt(I)Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    .locals 3
    .param p0, "_value"    # I

    .line 83
    new-instance v0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->getTag()I

    .line 163
    return v0
.end method

.method public blacklist getAtsc3()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_assertTag(I)V

    .line 43
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDtmb()I
    .locals 1

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_assertTag(I)V

    .line 73
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbc()I
    .locals 1

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_assertTag(I)V

    .line 58
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbt()I
    .locals 1

    .line 87
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_assertTag(I)V

    .line 88
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 32
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 155
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

    .line 151
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_set(ILjava/lang/Object;)V

    .line 153
    return-void

    .line 146
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_set(ILjava/lang/Object;)V

    .line 148
    return-void

    .line 141
    .end local v1    # "_aidl_value":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_set(ILjava/lang/Object;)V

    .line 143
    return-void

    .line 136
    .end local v1    # "_aidl_value":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_set(ILjava/lang/Object;)V

    .line 138
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setAtsc3(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_set(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public blacklist setDtmb(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_set(ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method public blacklist setDvbc(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_set(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public blacklist setIsdbt(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_set(ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 113
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->getIsdbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->getDtmb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    goto :goto_0

    .line 119
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->getDvbc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    goto :goto_0

    .line 116
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->getAtsc3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    nop

    .line 128
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
