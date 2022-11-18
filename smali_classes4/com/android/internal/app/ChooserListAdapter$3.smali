.class Lcom/android/internal/app/ChooserListAdapter$3;
.super Landroid/os/AsyncTask;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserListAdapter;->createSortingTask(Z)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserListAdapter;

.field final synthetic blacklist val$doPostProcessing:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 711
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserListAdapter$3;->val$doPostProcessing:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 711
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$3;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 715
    .local p1, "params":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const-string v0, "ChooserListAdapter#SortingTask"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v3}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    move-result-object v3

    .line 717
    invoke-interface {v3}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v3

    .line 716
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ResolverListController;->topK(Ljava/util/List;I)V

    .line 718
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 719
    aget-object v0, p1, v1

    return-object v0
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 711
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 723
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-boolean v1, p0, Lcom/android/internal/app/ChooserListAdapter$3;->val$doPostProcessing:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ChooserListAdapter;->processSortedList(Ljava/util/List;Z)V

    .line 724
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->val$doPostProcessing:Z

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->updateProfileViewButton()V

    .line 726
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 728
    :cond_0
    return-void
.end method
