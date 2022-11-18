.class Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListAdapter$LoadIconTask$LoadIconTaskWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field protected final blacklist mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

.field private blacklist mLoadIconTaskExt:Lcom/android/internal/app/ILoadIconTaskExt;

.field private final blacklist mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private blacklist mWrapper:Lcom/android/internal/app/ILoadIconTaskWrapper;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLoadIconTaskExt(Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;)Lcom/android/internal/app/ILoadIconTaskExt;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mLoadIconTaskExt:Lcom/android/internal/app/ILoadIconTaskExt;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "holder"    # Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 991
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1029
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask$LoadIconTaskWrapper;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask$LoadIconTaskWrapper;-><init>(Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mWrapper:Lcom/android/internal/app/ILoadIconTaskWrapper;

    .line 1031
    const-class v0, Lcom/android/internal/app/ILoadIconTaskExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ILoadIconTaskExt;

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mLoadIconTaskExt:Lcom/android/internal/app/ILoadIconTaskExt;

    .line 992
    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 993
    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 994
    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 995
    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .line 999
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 986
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getWrapper()Lcom/android/internal/app/ILoadIconTaskWrapper;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mWrapper:Lcom/android/internal/app/ILoadIconTaskWrapper;

    return-object v0
.end method

.method protected blacklist onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1004
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-ne v0, v1, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->updateProfileViewButton()V

    goto :goto_0

    .line 1007
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->getWrapper()Lcom/android/internal/app/ILoadIconTaskWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ILoadIconTaskWrapper;->getLoadIconTaskExt()Lcom/android/internal/app/ILoadIconTaskExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$fgetmResolverListAdapterWrapper(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/IResolverListAdapterWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/ILoadIconTaskExt;->hookonPostExecute(Lcom/android/internal/app/IResolverListAdapterExt;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 1015
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 1017
    :goto_0
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 986
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist setViewHolder(Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 1022
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->getWrapper()Lcom/android/internal/app/ILoadIconTaskWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ILoadIconTaskWrapper;->getLoadIconTaskExt()Lcom/android/internal/app/ILoadIconTaskExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$fgetmResolverListAdapterWrapper(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/IResolverListAdapterWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/app/ILoadIconTaskExt;->hooksetViewHolder(Lcom/android/internal/app/IResolverListAdapterExt;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1024
    :cond_0
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 1025
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1026
    return-void
.end method
