.class public final Landroid/hardware/vibrator/PrimitivePwle;
.super Ljava/lang/Object;
.source "PrimitivePwle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/PrimitivePwle$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/vibrator/PrimitivePwle;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist active:I = 0x0

.field public static final blacklist braking:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/hardware/vibrator/PrimitivePwle$1;

    invoke-direct {v0}, Landroid/hardware/vibrator/PrimitivePwle$1;-><init>()V

    sput-object v0, Landroid/hardware/vibrator/PrimitivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "_value":Landroid/hardware/vibrator/ActivePwle;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    .line 16
    iput-object v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

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
    iput p1, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    .line 25
    iput-object p2, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/vibrator/PrimitivePwle-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/vibrator/PrimitivePwle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 131
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 134
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/vibrator/PrimitivePwle;->_tagString(I)Ljava/lang/String;

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

    .line 145
    iput p1, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    .line 146
    iput-object p2, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    .line 147
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 141
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

    .line 139
    :pswitch_0
    const-string v0, "braking"

    return-object v0

    .line 138
    :pswitch_1
    const-string v0, "active"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist active(Landroid/hardware/vibrator/ActivePwle;)Landroid/hardware/vibrator/PrimitivePwle;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/vibrator/ActivePwle;

    .line 35
    new-instance v0, Landroid/hardware/vibrator/PrimitivePwle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/vibrator/PrimitivePwle;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist braking(Landroid/hardware/vibrator/BrakingPwle;)Landroid/hardware/vibrator/PrimitivePwle;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/vibrator/BrakingPwle;

    .line 50
    new-instance v0, Landroid/hardware/vibrator/PrimitivePwle;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/vibrator/PrimitivePwle;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 124
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 125
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 127
    :cond_1
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getBraking()Landroid/hardware/vibrator/BrakingPwle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/vibrator/PrimitivePwle;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getActive()Landroid/hardware/vibrator/ActivePwle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/vibrator/PrimitivePwle;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 115
    nop

    .line 120
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getActive()Landroid/hardware/vibrator/ActivePwle;
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/vibrator/PrimitivePwle;->_assertTag(I)V

    .line 40
    iget-object v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/vibrator/ActivePwle;

    return-object v0
.end method

.method public blacklist getBraking()Landroid/hardware/vibrator/BrakingPwle;
    .locals 1

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/vibrator/PrimitivePwle;->_assertTag(I)V

    .line 55
    iget-object v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/vibrator/BrakingPwle;

    return-object v0
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
    iget v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

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
    sget-object v1, Landroid/hardware/vibrator/BrakingPwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/vibrator/BrakingPwle;

    .line 103
    .local v1, "_aidl_value":Landroid/hardware/vibrator/BrakingPwle;
    invoke-direct {p0, v0, v1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    .line 104
    return-void

    .line 97
    .end local v1    # "_aidl_value":Landroid/hardware/vibrator/BrakingPwle;
    :pswitch_1
    sget-object v1, Landroid/hardware/vibrator/ActivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/vibrator/ActivePwle;

    .line 98
    .local v1, "_aidl_value":Landroid/hardware/vibrator/ActivePwle;
    invoke-direct {p0, v0, v1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    .line 99
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setActive(Landroid/hardware/vibrator/ActivePwle;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/vibrator/ActivePwle;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method public blacklist setBraking(Landroid/hardware/vibrator/BrakingPwle;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/vibrator/BrakingPwle;

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 80
    iget v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getBraking()Landroid/hardware/vibrator/BrakingPwle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getActive()Landroid/hardware/vibrator/ActivePwle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

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
