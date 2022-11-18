.class public Landroid/renderscript/FileA3D$IndexEntry;
.super Ljava/lang/Object;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/FileA3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexEntry"
.end annotation


# instance fields
.field greylist-max-o mEntryType:Landroid/renderscript/FileA3D$EntryType;

.field greylist-max-o mID:J

.field greylist-max-o mIndex:I

.field greylist-max-o mLoadedObj:Landroid/renderscript/BaseObj;

.field greylist-max-o mName:Ljava/lang/String;

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;IJLjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "index"    # I
    .param p3, "id"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "type"    # Landroid/renderscript/FileA3D$EntryType;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    .line 164
    iput p2, p0, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    .line 165
    iput-wide p3, p0, Landroid/renderscript/FileA3D$IndexEntry;->mID:J

    .line 166
    iput-object p5, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    .line 167
    iput-object p6, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    .line 169
    return-void
.end method

.method static declared-synchronized greylist-max-o internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "entry"    # Landroid/renderscript/FileA3D$IndexEntry;

    const-class v0, Landroid/renderscript/FileA3D$IndexEntry;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 136
    monitor-exit v0

    return-object v1

    .line 140
    :cond_0
    :try_start_1
    iget-object v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    sget-object v2, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 141
    monitor-exit v0

    return-object v3

    .line 144
    :cond_1
    :try_start_2
    iget-wide v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mID:J

    iget v4, p1, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    invoke-virtual {p0, v1, v2, v4}, Landroid/renderscript/RenderScript;->nFileA3DGetEntryByIndex(JI)J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .local v1, "objectID":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    .line 146
    monitor-exit v0

    return-object v3

    .line 149
    :cond_2
    :try_start_3
    sget-object v3, Landroid/renderscript/FileA3D$1;->$SwitchMap$android$renderscript$FileA3D$EntryType:[I

    iget-object v4, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    invoke-virtual {v4}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 155
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    goto :goto_0

    .line 151
    :pswitch_0
    new-instance v3, Landroid/renderscript/Mesh;

    invoke-direct {v3, v1, v2, p0}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    .line 152
    nop

    .line 158
    invoke-virtual {v3}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 159
    iget-object v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v3

    .line 155
    :goto_0
    :try_start_4
    const-string v4, "Unrecognized object type in file."

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    .end local v1    # "objectID":J
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "entry":Landroid/renderscript/FileA3D$IndexEntry;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist getEntryType()Landroid/renderscript/FileA3D$EntryType;
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method

.method public greylist-max-o getMesh()Landroid/renderscript/Mesh;
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/renderscript/FileA3D$IndexEntry;->getObject()Landroid/renderscript/BaseObj;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getObject()Landroid/renderscript/BaseObj;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 119
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/FileA3D$IndexEntry;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;

    move-result-object v0

    .line 120
    .local v0, "obj":Landroid/renderscript/BaseObj;
    return-object v0
.end method
