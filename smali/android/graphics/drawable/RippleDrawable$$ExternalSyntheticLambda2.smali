.class public final synthetic Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/drawable/RippleDrawable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/drawable/RippleDrawable;

    check-cast p1, Landroid/graphics/drawable/RippleAnimationSession;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->lambda$drawPatterned$2$android-graphics-drawable-RippleDrawable(Landroid/graphics/drawable/RippleAnimationSession;)V

    return-void
.end method
