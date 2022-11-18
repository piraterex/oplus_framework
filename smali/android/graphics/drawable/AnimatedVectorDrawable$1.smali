.class Landroid/graphics/drawable/AnimatedVectorDrawable$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 981
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 984
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    .line 985
    return-void
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 989
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 990
    return-void
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 994
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 995
    return-void
.end method
