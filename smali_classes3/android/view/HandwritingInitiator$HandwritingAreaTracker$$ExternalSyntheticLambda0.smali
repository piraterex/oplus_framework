.class public final synthetic Landroid/view/HandwritingInitiator$HandwritingAreaTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    invoke-static {p1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->lambda$computeViewInfos$0(Landroid/view/HandwritingInitiator$HandwritableViewInfo;)Z

    move-result p1

    return p1
.end method
