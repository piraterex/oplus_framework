.class public final Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualMouseScrollEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseScrollEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mXAxisMovement:F

.field private blacklist mYAxisMovement:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualMouseScrollEvent;
    .locals 4

    .line 89
    new-instance v0, Landroid/hardware/input/VirtualMouseScrollEvent;

    iget v1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mXAxisMovement:F

    iget v2, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mYAxisMovement:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/input/VirtualMouseScrollEvent;-><init>(FFLandroid/hardware/input/VirtualMouseScrollEvent-IA;)V

    return-object v0
.end method

.method public whitelist setXAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
    .locals 3
    .param p1, "xAxisMovement"    # F

    .line 100
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const-string/jumbo v2, "xAxisMovement"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 101
    iput p1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mXAxisMovement:F

    .line 102
    return-object p0
.end method

.method public whitelist setYAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
    .locals 3
    .param p1, "yAxisMovement"    # F

    .line 113
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const-string/jumbo v2, "yAxisMovement"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 114
    iput p1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mYAxisMovement:F

    .line 115
    return-object p0
.end method
