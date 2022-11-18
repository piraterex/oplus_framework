.class Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;
.super Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicInternal"
.end annotation


# instance fields
.field private final greylist-max-o mDefaultIsRtl:Z


# direct methods
.method private constructor greylist-max-o <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;Z)V
    .locals 0
    .param p1, "algorithm"    # Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;
    .param p2, "defaultIsRtl"    # Z

    .line 180
    invoke-direct {p0, p1}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V

    .line 181
    iput-boolean p2, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    .line 182
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;Z)V

    return-void
.end method


# virtual methods
.method protected greylist-max-o defaultIsRtl()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return v0
.end method
