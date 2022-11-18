.class public final synthetic Landroid/app/ActivityThread$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityThread;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread;

    return-void
.end method


# virtual methods
.method public final blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->lambda$attach$2$android-app-ActivityThread(Landroid/content/res/Configuration;)V

    return-void
.end method
