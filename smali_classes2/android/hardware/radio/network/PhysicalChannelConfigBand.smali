.class public final Landroid/hardware/radio/network/PhysicalChannelConfigBand;
.super Ljava/lang/Object;
.source "PhysicalChannelConfigBand.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/PhysicalChannelConfigBand$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/PhysicalChannelConfigBand;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist eutranBand:I = 0x3

.field public static final blacklist geranBand:I = 0x1

.field public static final blacklist ngranBand:I = 0x4

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist utranBand:I = 0x2


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Landroid/hardware/radio/network/PhysicalChannelConfigBand$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tag:I

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_value:Ljava/lang/Object;

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
    iput p1, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tag:I

    .line 28
    iput-object p2, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_value:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/PhysicalChannelConfigBand-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 201
    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 204
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tagString(I)Ljava/lang/String;

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

    .line 218
    iput p1, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tag:I

    .line 219
    iput-object p2, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_value:Ljava/lang/Object;

    .line 220
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 214
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

    .line 212
    :pswitch_0
    const-string v0, "ngranBand"

    return-object v0

    .line 211
    :pswitch_1
    const-string v0, "eutranBand"

    return-object v0

    .line 210
    :pswitch_2
    const-string/jumbo v0, "utranBand"

    return-object v0

    .line 209
    :pswitch_3
    const-string v0, "geranBand"

    return-object v0

    .line 208
    :pswitch_4
    const-string v0, "noinit"

    return-object v0

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

.method public static blacklist eutranBand(I)Landroid/hardware/radio/network/PhysicalChannelConfigBand;
    .locals 3
    .param p0, "_value"    # I

    .line 83
    new-instance v0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist geranBand(I)Landroid/hardware/radio/network/PhysicalChannelConfigBand;
    .locals 3
    .param p0, "_value"    # I

    .line 53
    new-instance v0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ngranBand(I)Landroid/hardware/radio/network/PhysicalChannelConfigBand;
    .locals 3
    .param p0, "_value"    # I

    .line 98
    new-instance v0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/radio/network/PhysicalChannelConfigBand;
    .locals 3
    .param p0, "_value"    # Z

    .line 38
    new-instance v0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist utranBand(I)Landroid/hardware/radio/network/PhysicalChannelConfigBand;
    .locals 3
    .param p0, "_value"    # I

    .line 68
    new-instance v0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getTag()I

    .line 186
    return v0
.end method

.method public blacklist getEutranBand()I
    .locals 1

    .line 87
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_assertTag(I)V

    .line 88
    iget-object v0, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getGeranBand()I
    .locals 1

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_assertTag(I)V

    .line 58
    iget-object v0, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getNgranBand()I
    .locals 1

    .line 102
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_assertTag(I)V

    .line 103
    iget-object v0, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getNoinit()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_assertTag(I)V

    .line 43
    iget-object v0, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 32
    iget v0, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tag:I

    return v0
.end method

.method public blacklist getUtranBand()I
    .locals 1

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_assertTag(I)V

    .line 73
    iget-object v0, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 178
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

    .line 174
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 176
    return-void

    .line 169
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 171
    return-void

    .line 164
    .end local v1    # "_aidl_value":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 166
    return-void

    .line 159
    .end local v1    # "_aidl_value":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 161
    return-void

    .line 154
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 155
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 156
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

.method public blacklist setEutranBand(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method public blacklist setGeranBand(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public blacklist setNgranBand(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 108
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public blacklist setUtranBand(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_set(ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 191
    iget v0, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.PhysicalChannelConfigBand.ngranBand("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getNgranBand()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/radio/network/NgranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.PhysicalChannelConfigBand.eutranBand("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getEutranBand()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/radio/network/EutranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.PhysicalChannelConfigBand.utranBand("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getUtranBand()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/radio/network/UtranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.PhysicalChannelConfigBand.geranBand("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getGeranBand()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/radio/network/GeranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.PhysicalChannelConfigBand.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

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

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 128
    iget v0, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getNgranBand()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getEutranBand()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getUtranBand()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    goto :goto_0

    .line 134
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getGeranBand()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    goto :goto_0

    .line 131
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    nop

    .line 146
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
