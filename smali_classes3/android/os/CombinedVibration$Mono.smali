.class public final Landroid/os/CombinedVibration$Mono;
.super Landroid/os/CombinedVibration;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mono"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Mono;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEffect:Landroid/os/VibrationEffect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 378
    new-instance v0, Landroid/os/CombinedVibration$Mono$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Mono$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Mono;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 311
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 312
    sget-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    iput-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    .line 313
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/VibrationEffect;)V
    .locals 0
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 315
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 316
    iput-object p1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    .line 317
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 349
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    .line 353
    .local v0, "other":Landroid/os/CombinedVibration$Mono;
    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    iget-object v2, v0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 326
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getEffect()Landroid/os/VibrationEffect;
    .locals 1

    .line 321
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public blacklist hasVibrator(I)Z
    .locals 1
    .param p1, "vibratorId"    # I

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 358
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->isHapticFeedbackCandidate()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mono{mEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 339
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 375
    return-void
.end method
