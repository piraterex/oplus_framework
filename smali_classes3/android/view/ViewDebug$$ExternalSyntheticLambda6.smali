.class public final synthetic Landroid/view/ViewDebug$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/View;

.field public final synthetic blacklist f$1:Landroid/graphics/Canvas;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public final blacklist run()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Canvas;

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->lambda$profileViewDraw$2(Landroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method
