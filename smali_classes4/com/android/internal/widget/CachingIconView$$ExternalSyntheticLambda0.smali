.class public final synthetic Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/CachingIconView;

.field public final synthetic blacklist f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/CachingIconView;

    iput-object p2, p0, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/CachingIconView;

    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->lambda$setImageResourceAsync$1$com-android-internal-widget-CachingIconView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
