.class final Landroid/app/assist/AssistStructure$ParcelTransferWriter;
.super Landroid/os/Binder;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParcelTransferWriter"
.end annotation


# instance fields
.field greylist-max-o mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

.field greylist-max-o mCurViewStackPos:I

.field greylist-max-o mCurWindow:I

.field greylist-max-o mNumWindows:I

.field greylist-max-o mNumWrittenViews:I

.field greylist-max-o mNumWrittenWindows:I

.field final greylist-max-o mSanitizeOnWrite:Z

.field final greylist-max-o mTmpMatrix:[F

.field final greylist-max-o mViewStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/assist/AssistStructure$ViewStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mWriteStructure:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    .line 199
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    .line 196
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    .line 200
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmSanitizeOnWrite(Landroid/app/assist/AssistStructure;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mSanitizeOnWrite:Z

    .line 201
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure;->waitForReady()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mWriteStructure:Z

    .line 202
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmFlags(Landroid/app/assist/AssistStructure;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmAutofillFlags(Landroid/app/assist/AssistStructure;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmAcquisitionStartTime(Landroid/app/assist/AssistStructure;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmAcquisitionEndTime(Landroid/app/assist/AssistStructure;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmWindowNodes(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    .line 207
    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 208
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 210
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    :goto_0
    return-void
.end method


# virtual methods
.method greylist-max-o pushViewStackEntry(Landroid/app/assist/AssistStructure$ViewNode;I)V
    .locals 2
    .param p1, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "pos"    # I

    .line 255
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 256
    new-instance v0, Landroid/app/assist/AssistStructure$ViewStackEntry;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewStackEntry;-><init>()V

    .line 257
    .local v0, "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    .end local v0    # "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure$ViewStackEntry;

    .line 263
    .restart local v0    # "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    :goto_0
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->node:Landroid/app/assist/AssistStructure$ViewNode;

    .line 264
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v1

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    .line 265
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    .line 266
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    .line 267
    return-void
.end method

.method greylist-max-o writeNextEntryToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;Landroid/os/PooledStringWriter;)Z
    .locals 5
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "pwriter"    # Landroid/os/PooledStringWriter;

    .line 292
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 293
    iget v0, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v2, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    if-ge v0, v2, :cond_0

    .line 297
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->node:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v2, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    aget-object v0, v0, v2

    .line 298
    .local v0, "child":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v3, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    .line 299
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V

    .line 300
    return v1

    .line 305
    .end local v0    # "child":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_0
    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    .line 308
    .local v0, "pos":I
    if-gez v0, :cond_1

    .line 311
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    .line 312
    goto :goto_0

    .line 314
    :cond_1
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/assist/AssistStructure$ViewStackEntry;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    .line 315
    .end local v0    # "pos":I
    iget v0, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v2, v2, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    if-ge v0, v2, :cond_0

    .line 316
    :goto_0
    return v1

    .line 320
    :cond_2
    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    .line 321
    .restart local v0    # "pos":I
    iget v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    .line 322
    invoke-static {p1}, Landroid/app/assist/AssistStructure;->-$$Nest$fgetmWindowNodes(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/assist/AssistStructure$WindowNode;

    .line 323
    .local v2, "win":Landroid/app/assist/AssistStructure$WindowNode;
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    .line 327
    const v4, 0x11111111

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    invoke-virtual {v2, p2, p3, v4}, Landroid/app/assist/AssistStructure$WindowNode;->writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V

    .line 329
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    .line 330
    iget-object v4, v2, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    .line 331
    .local v4, "root":Landroid/app/assist/AssistStructure$ViewNode;
    iput v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    .line 333
    invoke-virtual {p0, v4, p2, p3, v3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V

    .line 334
    return v1

    .line 337
    .end local v2    # "win":Landroid/app/assist/AssistStructure$WindowNode;
    .end local v4    # "root":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_3
    return v3
.end method

.method greylist-max-o writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 216
    .local v0, "start":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    .line 217
    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    .line 218
    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcelInner(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)Z

    move-result v1

    .line 219
    .local v1, "more":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flattened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string/jumbo v3, "partial"

    goto :goto_0

    :cond_0
    const-string v3, "final"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " assist data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, containing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " windows, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " views"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    const-string v3, "AssistStructure"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method greylist-max-o writeToParcelInner(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    .line 226
    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 227
    return v1

    .line 230
    :cond_0
    new-instance v0, Landroid/os/PooledStringWriter;

    invoke-direct {v0, p2}, Landroid/os/PooledStringWriter;-><init>(Landroid/os/Parcel;)V

    .line 231
    .local v0, "pwriter":Landroid/os/PooledStringWriter;
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeNextEntryToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;Landroid/os/PooledStringWriter;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/high16 v3, 0x10000

    if-le v2, v3, :cond_1

    .line 238
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 242
    invoke-virtual {v0}, Landroid/os/PooledStringWriter;->finish()V

    .line 243
    const/4 v1, 0x1

    return v1

    .line 248
    :cond_2
    invoke-virtual {v0}, Landroid/os/PooledStringWriter;->finish()V

    .line 249
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 250
    return v1
.end method

.method greylist-max-o writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V
    .locals 7
    .param p1, "child"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p4, "levelAdj"    # I

    .line 274
    const v0, 0x22222222

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-boolean v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mSanitizeOnWrite:Z

    iget-object v5, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/assist/AssistStructure$ViewNode;->writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[FZ)I

    move-result v0

    .line 277
    .local v0, "flags":I
    iget v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    .line 279
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p1, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v1, v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    .line 286
    .local v1, "pos":I
    invoke-virtual {p0, p1, v1}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->pushViewStackEntry(Landroid/app/assist/AssistStructure$ViewNode;I)V

    .line 288
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method
