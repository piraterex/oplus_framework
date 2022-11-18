.class public abstract Landroid/app/FragmentHostCallback;
.super Landroid/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/FragmentContainer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mActivity:Landroid/app/Activity;

.field private greylist-max-o mAllLoaderManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCheckedForLoaderManager:Z

.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-o mFragmentManager:Landroid/app/FragmentManagerImpl;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mLoaderManager:Landroid/app/LoaderManagerImpl;

.field private greylist mLoadersStarted:Z

.field private greylist-max-o mRetainLoaders:Z

.field final greylist-max-o mWindowAnimations:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 69
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 70
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .line 73
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    .line 51
    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 74
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 77
    iput p4, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .line 64
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-static {p1, p2}, Landroid/app/FragmentHostCallback;->chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v1

    .line 64
    invoke-direct {p0, v0, p1, v1, p3}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 66
    return-void
.end method

.method private static greylist-max-o chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 85
    if-nez p1, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 86
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 87
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    return-object v1

    .line 89
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-object p1
.end method


# virtual methods
.method greylist-max-o doLoaderDestroy()V
    .locals 1

    .line 306
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 310
    return-void
.end method

.method greylist-max-o doLoaderRetain()V
    .locals 1

    .line 299
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 303
    return-void
.end method

.method greylist-max-o doLoaderStart()V
    .locals 3

    .line 266
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 271
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl;->doStart()V

    goto :goto_0

    .line 273
    :cond_1
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_2

    .line 274
    const/4 v1, 0x0

    const-string v2, "(root)"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 276
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 277
    return-void
.end method

.method greylist-max-o doLoaderStop(Z)V
    .locals 2
    .param p1, "retain"    # Z

    .line 280
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iput-boolean p1, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 282
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 286
    :cond_0
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v1, :cond_1

    .line 287
    return-void

    .line 289
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 291
    if-eqz p1, :cond_2

    .line 292
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    .line 296
    :goto_0
    return-void
.end method

.method greylist-max-o dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 385
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 387
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method greylist-max-o getActivity()Landroid/app/Activity;
    .locals 1

    .line 230
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method greylist-max-o getContext()Landroid/content/Context;
    .locals 1

    .line 234
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method greylist-max-o getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;
    .locals 1

    .line 242
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method greylist-max-o getHandler()Landroid/os/Handler;
    .locals 1

    .line 238
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method greylist-max-o getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .line 328
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 332
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 333
    new-instance v1, Landroid/app/LoaderManagerImpl;

    invoke-direct {v1, p1, p0, p2}, Landroid/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V

    move-object v0, v1

    .line 334
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_2

    .line 336
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 338
    :cond_2
    :goto_0
    return-object v0
.end method

.method greylist-max-o getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;
    .locals 3

    .line 246
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 247
    return-object v0

    .line 249
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 250
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    const-string v2, "(root)"

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 251
    return-object v0
.end method

.method greylist-max-o getRetainLoaders()Z
    .locals 1

    .line 226
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method greylist-max-o inactivateFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .line 256
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    .line 258
    .local v0, "lm":Landroid/app/LoaderManagerImpl;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 260
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .end local v0    # "lm":Landroid/app/LoaderManagerImpl;
    :cond_0
    return-void
.end method

.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 212
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public whitelist onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 103
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public whitelist onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 217
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public whitelist onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .line 117
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist onGetWindowAnimations()I
    .locals 1

    .line 203
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public whitelist onHasView()Z
    .locals 1

    .line 222
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onHasWindowAnimations()Z
    .locals 1

    .line 196
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onInvalidateOptionsMenu()V
    .locals 0

    .line 140
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public whitelist onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 190
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public whitelist onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 109
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .line 162
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 167
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 148
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 176
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    move v1, p3

    if-ne v1, v0, :cond_0

    .line 180
    move-object v0, p0

    iget-object v2, v0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 182
    return-void

    .line 177
    :cond_0
    move-object v0, p0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist onUseFragmentManagerInflaterFactory()Z
    .locals 1

    .line 124
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o reportLoaderStart()V
    .locals 4

    .line 313
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 315
    .local v0, "N":I
    new-array v1, v0, [Landroid/app/LoaderManagerImpl;

    .line 316
    .local v1, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 317
    iget-object v3, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoaderManagerImpl;

    aput-object v3, v1, v2

    .line 316
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 319
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 320
    aget-object v3, v1, v2

    .line 321
    .local v3, "lm":Landroid/app/LoaderManagerImpl;
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->finishRetain()V

    .line 322
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 319
    .end local v3    # "lm":Landroid/app/LoaderManagerImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "N":I
    .end local v1    # "loaders":[Landroid/app/LoaderManagerImpl;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method greylist-max-o restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .line 376
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    .local p1, "loaderManagers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-eqz p1, :cond_0

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 378
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2, p0}, Landroid/app/LoaderManagerImpl;->updateHostController(Landroid/app/FragmentHostCallback;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    .line 382
    return-void
.end method

.method greylist-max-o retainLoaderNonConfig()Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .line 342
    .local p0, "this":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    .line 343
    .local v0, "retainLoaders":Z
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    .line 346
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 347
    .local v1, "N":I
    new-array v2, v1, [Landroid/app/LoaderManagerImpl;

    .line 348
    .local v2, "loaders":[Landroid/app/LoaderManagerImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 349
    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoaderManagerImpl;

    aput-object v4, v2, v3

    .line 348
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 351
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v3

    .line 352
    .local v3, "doRetainLoaders":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 353
    aget-object v5, v2, v4

    .line 354
    .local v5, "lm":Landroid/app/LoaderManagerImpl;
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    .line 355
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_1

    .line 356
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 358
    :cond_1
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 360
    :cond_2
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3

    .line 361
    const/4 v0, 0x1

    goto :goto_2

    .line 363
    :cond_3
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 364
    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v5    # "lm":Landroid/app/LoaderManagerImpl;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 369
    .end local v1    # "N":I
    .end local v2    # "loaders":[Landroid/app/LoaderManagerImpl;
    .end local v3    # "doRetainLoaders":Z
    .end local v4    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 370
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    return-object v1

    .line 372
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method
