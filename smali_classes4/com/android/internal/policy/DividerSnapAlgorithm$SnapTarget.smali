.class public Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DividerSnapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapTarget"
.end annotation


# static fields
.field public static final blacklist FLAG_DISMISS_END:I = 0x2

.field public static final blacklist FLAG_DISMISS_START:I = 0x1

.field public static final blacklist FLAG_NONE:I


# instance fields
.field private final blacklist distanceMultiplier:F

.field public final blacklist flag:I

.field public blacklist isMiddleTarget:Z

.field public final blacklist position:I

.field public final blacklist taskPosition:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdistanceMultiplier(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    return p0
.end method

.method public constructor blacklist <init>(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "flag"    # I

    .line 536
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    .line 537
    return-void
.end method

.method public constructor blacklist <init>(IIIF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "flag"    # I
    .param p4, "distanceMultiplier"    # F

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 541
    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    .line 542
    iput p3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    .line 543
    iput p4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    .line 544
    return-void
.end method
