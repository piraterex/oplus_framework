.class public final Landroid/hardware/radio/data/QosFilterIpsecSpi;
.super Ljava/lang/Object;
.source "QosFilterIpsecSpi.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/QosFilterIpsecSpi$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/data/QosFilterIpsecSpi;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist value:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/hardware/radio/data/QosFilterIpsecSpi$1;

    invoke-direct {v0}, Landroid/hardware/radio/data/QosFilterIpsecSpi$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tag:I

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_value:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tag:I

    .line 25
    iput-object p2, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/data/QosFilterIpsecSpi-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/data/QosFilterIpsecSpi;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 126
    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 129
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tagString(I)Ljava/lang/String;

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

    .line 140
    iput p1, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tag:I

    .line 141
    iput-object p2, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_value:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 136
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

    .line 134
    :pswitch_0
    const-string/jumbo v0, "value"

    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist noinit(Z)Landroid/hardware/radio/data/QosFilterIpsecSpi;
    .locals 3
    .param p0, "_value"    # Z

    .line 35
    new-instance v0, Landroid/hardware/radio/data/QosFilterIpsecSpi;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/data/QosFilterIpsecSpi;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist value(I)Landroid/hardware/radio/data/QosFilterIpsecSpi;
    .locals 3
    .param p0, "_value"    # I

    .line 50
    new-instance v0, Landroid/hardware/radio/data/QosFilterIpsecSpi;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/data/QosFilterIpsecSpi;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getTag()I

    .line 114
    return v0
.end method

.method public blacklist getNoinit()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_assertTag(I)V

    .line 40
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 29
    iget v0, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tag:I

    return v0
.end method

.method public blacklist getValue()I
    .locals 1

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_assertTag(I)V

    .line 55
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 106
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

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_set(ILjava/lang/Object;)V

    .line 104
    return-void

    .line 97
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 98
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_set(ILjava/lang/Object;)V

    .line 99
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setNoinit(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_set(ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method public blacklist setValue(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_set(ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 119
    iget v0, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.data.QosFilterIpsecSpi.value("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.data.QosFilterIpsecSpi.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getNoinit()Z

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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 80
    iget v0, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/hardware/radio/data/QosFilterIpsecSpi;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 84
    nop

    .line 89
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
