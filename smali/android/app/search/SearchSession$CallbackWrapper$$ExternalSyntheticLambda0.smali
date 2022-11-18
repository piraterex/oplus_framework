.class public final synthetic Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/search/SearchSession$CallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/search/SearchSession$CallbackWrapper;Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSession$CallbackWrapper;

    iput-object p2, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSession$CallbackWrapper;

    iget-object v1, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0, v1}, Landroid/app/search/SearchSession$CallbackWrapper;->lambda$onResult$0$android-app-search-SearchSession$CallbackWrapper(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method
