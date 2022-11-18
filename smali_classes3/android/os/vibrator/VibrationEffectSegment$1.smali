.class Landroid/os/vibrator/VibrationEffectSegment$1;
.super Ljava/lang/Object;
.source "VibrationEffectSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/VibrationEffectSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/vibrator/VibrationEffectSegment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected vibration event type token in parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    new-instance v0, Landroid/os/vibrator/RampSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/RampSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 159
    :pswitch_1
    new-instance v0, Landroid/os/vibrator/StepSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/StepSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 165
    :pswitch_2
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/PrimitiveSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 163
    :pswitch_3
    new-instance v0, Landroid/os/vibrator/PrebakedSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/PrebakedSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationEffectSegment$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/vibrator/VibrationEffectSegment;
    .locals 1
    .param p1, "size"    # I

    .line 174
    new-array v0, p1, [Landroid/os/vibrator/VibrationEffectSegment;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationEffectSegment$1;->newArray(I)[Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object p1

    return-object p1
.end method
