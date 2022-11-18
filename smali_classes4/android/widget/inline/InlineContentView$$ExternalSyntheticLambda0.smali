.class public final synthetic Landroid/widget/inline/InlineContentView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/inline/InlineContentView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/inline/InlineContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/inline/InlineContentView$$ExternalSyntheticLambda0;->f$0:Landroid/widget/inline/InlineContentView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$$ExternalSyntheticLambda0;->f$0:Landroid/widget/inline/InlineContentView;

    check-cast p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0, p1}, Landroid/widget/inline/InlineContentView;->lambda$onAttachedToWindow$0$android-widget-inline-InlineContentView(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-void
.end method
