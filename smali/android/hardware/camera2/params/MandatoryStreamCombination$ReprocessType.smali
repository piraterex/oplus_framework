.class final enum Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
.super Ljava/lang/Enum;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReprocessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum blacklist NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum blacklist PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum blacklist REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum blacklist YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 470
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v3, "PRIVATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    new-instance v3, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v5, "YUV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v7, "REMOSAIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 470
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 470
    const-class v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
    .locals 1

    .line 470
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-virtual {v0}, [Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    return-object v0
.end method
