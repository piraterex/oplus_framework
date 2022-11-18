.class public final Landroid/hardware/tv/tuner/FrontendModulationStatus;
.super Ljava/lang/Object;
.source "FrontendModulationStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendModulationStatus$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendModulationStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist dvbc:I = 0x0

.field public static final blacklist dvbs:I = 0x1

.field public static final blacklist isdbs:I = 0x2

.field public static final blacklist isdbs3:I = 0x3

.field public static final blacklist isdbt:I = 0x4


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulationStatus$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_tag:I

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_value:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_tag:I

    .line 29
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendModulationStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulationStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 191
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 194
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_tagString(I)Ljava/lang/String;

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

    .line 208
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_tag:I

    .line 209
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_value:Ljava/lang/Object;

    .line 210
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 204
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

    .line 202
    :pswitch_0
    const-string v0, "isdbt"

    return-object v0

    .line 201
    :pswitch_1
    const-string v0, "isdbs3"

    return-object v0

    .line 200
    :pswitch_2
    const-string v0, "isdbs"

    return-object v0

    .line 199
    :pswitch_3
    const-string v0, "dvbs"

    return-object v0

    .line 198
    :pswitch_4
    const-string v0, "dvbc"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist dvbc(I)Landroid/hardware/tv/tuner/FrontendModulationStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 39
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulationStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbs(I)Landroid/hardware/tv/tuner/FrontendModulationStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 54
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulationStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs(I)Landroid/hardware/tv/tuner/FrontendModulationStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 69
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulationStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs3(I)Landroid/hardware/tv/tuner/FrontendModulationStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 84
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulationStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbt(I)Landroid/hardware/tv/tuner/FrontendModulationStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 99
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendModulationStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->getTag()I

    .line 187
    return v0
.end method

.method public blacklist getDvbc()I
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_assertTag(I)V

    .line 44
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbs()I
    .locals 1

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_assertTag(I)V

    .line 59
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbs()I
    .locals 1

    .line 73
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_assertTag(I)V

    .line 74
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbs3()I
    .locals 1

    .line 88
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_assertTag(I)V

    .line 89
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbt()I
    .locals 1

    .line 103
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_assertTag(I)V

    .line 104
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 33
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 179
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

    .line 175
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 177
    return-void

    .line 170
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 172
    return-void

    .line 165
    .end local v1    # "_aidl_value":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 167
    return-void

    .line 160
    .end local v1    # "_aidl_value":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 162
    return-void

    .line 155
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 157
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setDvbc(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public blacklist setDvbs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public blacklist setIsdbs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public blacklist setIsdbs3(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public blacklist setIsdbt(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_set(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 129
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulationStatus;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->getIsdbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->getIsdbs3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->getIsdbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    goto :goto_0

    .line 135
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->getDvbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    goto :goto_0

    .line 132
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulationStatus;->getDvbc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    nop

    .line 147
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
