.class public Landroid/app/ListActivity;
.super Landroid/app/Activity;
.source "ListActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mFinishedStart:Z

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field protected greylist-max-o mList:Landroid/widget/ListView;

.field private greylist-max-o mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private greylist-max-o mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    .line 194
    new-instance v0, Landroid/app/ListActivity$1;

    invoke-direct {v0, p0}, Landroid/app/ListActivity$1;-><init>(Landroid/app/ListActivity;)V

    iput-object v0, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 320
    new-instance v0, Landroid/app/ListActivity$2;

    invoke-direct {v0, p0}, Landroid/app/ListActivity$2;-><init>(Landroid/app/ListActivity;)V

    iput-object v0, p0, Landroid/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private greylist-max-o ensureList()V
    .locals 1

    .line 313
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    const v0, 0x109009c

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setContentView(I)V

    .line 318
    return-void
.end method


# virtual methods
.method public whitelist getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 309
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getListView()Landroid/widget/ListView;
    .locals 1

    .line 301
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    .line 302
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public whitelist getSelectedItemId()J
    .locals 2

    .line 294
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .locals 1

    .line 287
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public whitelist onContentChanged()V
    .locals 3

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 244
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    .line 246
    if-eqz v1, :cond_2

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 254
    :cond_0
    iget-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Landroid/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    iget-boolean v1, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    :cond_1
    iget-object v1, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    .line 260
    return-void

    .line 247
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist onDestroy()V
    .locals 2

    .line 231
    iget-object v0, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 233
    return-void
.end method

.method protected whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 212
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .line 222
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method public whitelist setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    .line 268
    iput-object p1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 269
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    monitor-exit p0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 280
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 281
    return-void
.end method
