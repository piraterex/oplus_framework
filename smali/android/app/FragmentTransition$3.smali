.class Landroid/app/FragmentTransition$3;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$inEpicenter:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Rect;)V
    .locals 0

    .line 649
    iput-object p1, p0, Landroid/app/FragmentTransition$3;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 652
    iget-object v0, p0, Landroid/app/FragmentTransition$3;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    const/4 v0, 0x0

    return-object v0

    .line 655
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentTransition$3;->val$inEpicenter:Landroid/graphics/Rect;

    return-object v0
.end method
