.class public Landroid/view/SurfaceControl$JankData;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JankData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$JankData$JankType;
    }
.end annotation


# static fields
.field public static final blacklist BUFFER_STUFFING:I = 0x40

.field public static final blacklist DISPLAY_HAL:I = 0x1

.field public static final blacklist JANK_APP_DEADLINE_MISSED:I = 0x8

.field public static final blacklist JANK_NONE:I = 0x0

.field public static final blacklist JANK_SURFACEFLINGER_DEADLINE_MISSED:I = 0x2

.field public static final blacklist JANK_SURFACEFLINGER_GPU_DEADLINE_MISSED:I = 0x4

.field public static final blacklist PREDICTION_ERROR:I = 0x10

.field public static final blacklist SURFACE_FLINGER_SCHEDULING:I = 0x20

.field public static final blacklist UNKNOWN:I = 0x80


# instance fields
.field public final blacklist frameVsyncId:J

.field public final blacklist jankType:I


# direct methods
.method public constructor blacklist <init>(JI)V
    .locals 0
    .param p1, "frameVsyncId"    # J
    .param p3, "jankType"    # I

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-wide p1, p0, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    .line 443
    iput p3, p0, Landroid/view/SurfaceControl$JankData;->jankType:I

    .line 444
    return-void
.end method
