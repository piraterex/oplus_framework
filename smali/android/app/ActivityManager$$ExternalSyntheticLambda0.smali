.class public final synthetic Landroid/app/ActivityManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/HomeVisibilityListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/HomeVisibilityListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/HomeVisibilityListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/HomeVisibilityListener;

    invoke-static {v0}, Landroid/app/ActivityManager;->lambda$addHomeVisibilityListener$0(Landroid/app/HomeVisibilityListener;)V

    return-void
.end method
