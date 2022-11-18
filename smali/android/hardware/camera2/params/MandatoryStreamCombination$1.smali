.class synthetic Landroid/hardware/camera2/params/MandatoryStreamCombination$1;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$android$hardware$camera2$params$MandatoryStreamCombination$SizeThreshold:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 1566
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$1;->$SwitchMap$android$hardware$camera2$params$MandatoryStreamCombination$SizeThreshold:[I

    :try_start_0
    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$1;->$SwitchMap$android$hardware$camera2$params$MandatoryStreamCombination$SizeThreshold:[I

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
