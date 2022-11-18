.class public Landroid/app/assist/AssistStructure;
.super Ljava/lang/Object;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;,
        Landroid/app/assist/AssistStructure$HtmlInfoNode;,
        Landroid/app/assist/AssistStructure$ViewNodeBuilder;,
        Landroid/app/assist/AssistStructure$AutofillOverlay;,
        Landroid/app/assist/AssistStructure$ViewNodeParcelable;,
        Landroid/app/assist/AssistStructure$ViewNode;,
        Landroid/app/assist/AssistStructure$WindowNode;,
        Landroid/app/assist/AssistStructure$ViewNodeText;,
        Landroid/app/assist/AssistStructure$ParcelTransferReader;,
        Landroid/app/assist/AssistStructure$ParcelTransferWriter;,
        Landroid/app/assist/AssistStructure$ViewStackEntry;,
        Landroid/app/assist/AssistStructure$SendChannel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistStructure;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_PARCEL:Z = false

.field private static final greylist-max-o DEBUG_PARCEL_CHILDREN:Z = false

.field private static final greylist-max-o DEBUG_PARCEL_TREE:Z = false

.field private static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.AssistStructure"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssistStructure"

.field private static final greylist-max-o TRANSACTION_XFER:I = 0x2

.field private static final greylist-max-o VALIDATE_VIEW_TOKEN:I = 0x22222222

.field private static final greylist-max-o VALIDATE_WINDOW_TOKEN:I = 0x11111111


# instance fields
.field private greylist-max-o mAcquisitionEndTime:J

.field private greylist-max-o mAcquisitionStartTime:J

.field private greylist-max-o mActivityComponent:Landroid/content/ComponentName;

.field private blacklist mAutofillFlags:I

.field private greylist-max-o mFlags:I

.field private greylist-max-o mHaveData:Z

.field private greylist-max-o mIsHomeActivity:Z

.field private final greylist-max-o mPendingAsyncChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/assist/AssistStructure$ViewNodeBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReceiveChannel:Landroid/os/IBinder;

.field private greylist-max-o mSanitizeOnWrite:Z

.field private greylist-max-o mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

.field private blacklist mTaskId:I

.field private greylist-max-o mTmpRect:Landroid/graphics/Rect;

.field private final greylist-max-o mWindowNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/assist/AssistStructure$WindowNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAcquisitionEndTime(Landroid/app/assist/AssistStructure;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAcquisitionStartTime(Landroid/app/assist/AssistStructure;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutofillFlags(Landroid/app/assist/AssistStructure;)I
    .locals 0

    iget p0, p0, Landroid/app/assist/AssistStructure;->mAutofillFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/app/assist/AssistStructure;)I
    .locals 0

    iget p0, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAsyncChildren(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSanitizeOnWrite(Landroid/app/assist/AssistStructure;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTmpRect(Landroid/app/assist/AssistStructure;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowNodes(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAcquisitionEndTime(Landroid/app/assist/AssistStructure;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAcquisitionStartTime(Landroid/app/assist/AssistStructure;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillFlags(Landroid/app/assist/AssistStructure;I)V
    .locals 0

    iput p1, p0, Landroid/app/assist/AssistStructure;->mAutofillFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/app/assist/AssistStructure;I)V
    .locals 0

    iput p1, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2639
    new-instance v0, Landroid/app/assist/AssistStructure$1;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 2349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    .line 2350
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    .line 2351
    iput v0, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    .line 2352
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/Activity;ZI)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "forAutoFill"    # Z
    .param p3, "flags"    # I

    .line 2334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    .line 2335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    .line 2336
    iput p3, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    .line 2337
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 2338
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2337
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2339
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2340
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 2341
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping window with dettached view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AssistStructure"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    goto :goto_1

    .line 2345
    :cond_0
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    new-instance v4, Landroid/app/assist/AssistStructure$WindowNode;

    invoke-direct {v4, p0, v2, p2, p3}, Landroid/app/assist/AssistStructure$WindowNode;-><init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;ZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2339
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2347
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    .line 2356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    .line 2357
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    .line 2358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    .line 2359
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    .line 2360
    return-void
.end method


# virtual methods
.method public greylist-max-o clearSendChannel()V
    .locals 2

    .line 2611
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    if-eqz v0, :cond_0

    .line 2612
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    .line 2614
    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 2618
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;Z)V
    .locals 22
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p3, "showSensitive"    # Z

    .line 2394
    move-object/from16 v0, p1

    move/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "View ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTop()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2395
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2394
    const-string v5, "AssistStructure"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getId()I

    move-result v2

    .line 2397
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 2398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2399
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  ID: #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v7

    .line 2401
    .local v7, "entry":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2402
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdType()Ljava/lang/String;

    move-result-object v8

    .line 2403
    .local v8, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdPackage()Ljava/lang/String;

    move-result-object v9

    .line 2404
    .local v9, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "entry":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getScrollX()I

    move-result v4

    .line 2410
    .local v4, "scrollX":I
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getScrollY()I

    move-result v6

    .line 2411
    .local v6, "scrollY":I
    if-nez v4, :cond_2

    if-eqz v6, :cond_3

    .line 2412
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Scroll: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTransformation()Landroid/graphics/Matrix;

    move-result-object v3

    .line 2415
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_4

    .line 2416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Transformation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getElevation()F

    move-result v7

    .line 2419
    .local v7, "elevation":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_5

    .line 2420
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Elevation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAlpha()F

    move-result v9

    .line 2423
    .local v9, "alpha":F
    cmpl-float v8, v9, v8

    if-eqz v8, :cond_6

    .line 2424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "  Alpha: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    .line 2427
    .local v8, "contentDescription":Ljava/lang/CharSequence;
    if-eqz v8, :cond_7

    .line 2428
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  Content description: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 2431
    .local v10, "text":Ljava/lang/CharSequence;
    const-string v11, "  Resource id: "

    if-eqz v10, :cond_a

    .line 2432
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isSanitized()Z

    move-result v12

    if-nez v12, :cond_9

    if-eqz v1, :cond_8

    goto :goto_0

    .line 2433
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "REDACTED["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " chars]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 2432
    :cond_9
    :goto_0
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2433
    :goto_1
    nop

    .line 2434
    .local v12, "safeText":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Text (sel "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSelectionStart()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2435
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSelectionEnd()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2434
    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Text size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSize()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , style: #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2437
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextStyle()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2436
    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Text color fg: #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextColor()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", bg: #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2439
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextBackgroundColor()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2438
    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Input type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getInputType()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextIdEntry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    .end local v12    # "safeText":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v12

    .line 2444
    .local v12, "webDomain":Ljava/lang/String;
    if-eqz v12, :cond_b

    .line 2445
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Web domain: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;

    move-result-object v13

    .line 2448
    .local v13, "htmlInfo":Landroid/view/ViewStructure$HtmlInfo;
    if-eqz v13, :cond_c

    .line 2449
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  HtmlInfo: tag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Landroid/view/ViewStructure$HtmlInfo;->getTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", attr="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2450
    invoke-virtual {v13}, Landroid/view/ViewStructure$HtmlInfo;->getAttributes()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2449
    invoke-static {v5, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v14

    .line 2454
    .local v14, "localeList":Landroid/os/LocaleList;
    if-eqz v14, :cond_d

    .line 2455
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v2

    .end local v2    # "id":I
    .local v16, "id":I
    const-string v2, "  LocaleList: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2454
    .end local v16    # "id":I
    .restart local v2    # "id":I
    :cond_d
    move/from16 v16, v2

    .line 2457
    .end local v2    # "id":I
    .restart local v16    # "id":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v2

    .line 2458
    .local v2, "mimeTypes":[Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 2459
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v17, v3

    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .local v17, "matrix":Landroid/graphics/Matrix;
    const-string v3, "  MIME types: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2458
    .end local v17    # "matrix":Landroid/graphics/Matrix;
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    :cond_e
    move-object/from16 v17, v3

    .line 2461
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .restart local v17    # "matrix":Landroid/graphics/Matrix;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHint()Ljava/lang/String;

    move-result-object v3

    .line 2462
    .local v3, "hint":Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 2463
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v18, v2

    .end local v2    # "mimeTypes":[Ljava/lang/String;
    .local v18, "mimeTypes":[Ljava/lang/String;
    const-string v2, "  Hint: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHintIdEntry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2462
    .end local v18    # "mimeTypes":[Ljava/lang/String;
    .restart local v2    # "mimeTypes":[Ljava/lang/String;
    :cond_f
    move-object/from16 v18, v2

    .line 2466
    .end local v2    # "mimeTypes":[Ljava/lang/String;
    .restart local v18    # "mimeTypes":[Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2467
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_10

    .line 2468
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "  Extras: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isAssistBlocked()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2471
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "  BLOCKED"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v11

    .line 2474
    .local v11, "autofillId":Landroid/view/autofill/AutofillId;
    if-nez v11, :cond_12

    .line 2475
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v19, v2

    .end local v2    # "extras":Landroid/os/Bundle;
    .local v19, "extras":Landroid/os/Bundle;
    const-string v2, " NO autofill ID"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2477
    .end local v19    # "extras":Landroid/os/Bundle;
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_12
    move-object/from16 v19, v2

    .end local v2    # "extras":Landroid/os/Bundle;
    .restart local v19    # "extras":Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "  Autofill info: id= "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", type="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2478
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillType()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", options="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2479
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", hints="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2480
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillHints()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", value="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2481
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", sanitized="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2482
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isSanitized()Z

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", important="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2483
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getImportantForAutofill()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2477
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v2

    .line 2487
    .local v2, "NCHILDREN":I
    if-lez v2, :cond_14

    .line 2488
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v20, v3

    .end local v3    # "hint":Ljava/lang/String;
    .local v20, "hint":Ljava/lang/String;
    const-string v3, "  Children:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2490
    .local v3, "cprefix":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-ge v5, v2, :cond_13

    .line 2491
    move-object/from16 v15, p2

    invoke-virtual {v15, v5}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    .line 2492
    .local v0, "cnode":Landroid/app/assist/AssistStructure$ViewNode;
    move/from16 v21, v2

    move-object/from16 v2, p0

    .end local v2    # "NCHILDREN":I
    .local v21, "NCHILDREN":I
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/assist/AssistStructure;->dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .line 2490
    .end local v0    # "cnode":Landroid/app/assist/AssistStructure$ViewNode;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v21

    goto :goto_6

    .end local v21    # "NCHILDREN":I
    .restart local v2    # "NCHILDREN":I
    :cond_13
    move-object/from16 v15, p2

    move/from16 v21, v2

    move-object/from16 v2, p0

    .end local v2    # "NCHILDREN":I
    .restart local v21    # "NCHILDREN":I
    goto :goto_7

    .line 2487
    .end local v5    # "i":I
    .end local v20    # "hint":Ljava/lang/String;
    .end local v21    # "NCHILDREN":I
    .restart local v2    # "NCHILDREN":I
    .local v3, "hint":Ljava/lang/String;
    :cond_14
    move-object/from16 v15, p2

    move/from16 v21, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    .line 2495
    .end local v2    # "NCHILDREN":I
    .end local v3    # "hint":Ljava/lang/String;
    .restart local v20    # "hint":Ljava/lang/String;
    .restart local v21    # "NCHILDREN":I
    :goto_7
    return-void
.end method

.method public greylist-max-o dump(Z)V
    .locals 6
    .param p1, "showSensitive"    # Z

    .line 2374
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    const-string v1, "AssistStructure"

    if-nez v0, :cond_0

    .line 2375
    const-string v0, "dump(): calling ensureData() first"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 2378
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 2380
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2381
    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2379
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitize on write: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v0

    .line 2385
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2386
    invoke-virtual {p0, v2}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v3

    .line 2387
    .local v3, "node":Landroid/app/assist/AssistStructure$WindowNode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getLeft()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2388
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2387
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {p0, v5, v4, p1}, Landroid/app/assist/AssistStructure;->dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .line 2385
    .end local v3    # "node":Landroid/app/assist/AssistStructure$WindowNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2391
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public greylist-max-o ensureData()V
    .locals 2

    .line 2580
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    if-eqz v0, :cond_0

    .line 2581
    return-void

    .line 2583
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    .line 2584
    new-instance v0, Landroid/app/assist/AssistStructure$ParcelTransferReader;

    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$ParcelTransferReader;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V

    .line 2585
    .local v0, "reader":Landroid/app/assist/AssistStructure$ParcelTransferReader;
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->go()V

    .line 2586
    return-void
.end method

.method public greylist-max-o ensureDataForAutofill()V
    .locals 2

    .line 2565
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    if-eqz v0, :cond_0

    .line 2566
    return-void

    .line 2568
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    .line 2569
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2571
    :try_start_0
    new-instance v0, Landroid/app/assist/AssistStructure$ParcelTransferReader;

    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$ParcelTransferReader;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V

    .line 2572
    .local v0, "reader":Landroid/app/assist/AssistStructure$ParcelTransferReader;
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->go()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2574
    .end local v0    # "reader":Landroid/app/assist/AssistStructure$ParcelTransferReader;
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2575
    nop

    .line 2576
    return-void

    .line 2574
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2575
    throw v0
.end method

.method public whitelist getAcquisitionEndTime()J
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 137
    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-wide v0
.end method

.method public whitelist getAcquisitionStartTime()J
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 125
    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-wide v0
.end method

.method public whitelist getActivityComponent()Landroid/content/ComponentName;
    .locals 1

    .line 2527
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .locals 1

    .line 2532
    iget v0, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return v0
.end method

.method public blacklist getTaskId()I
    .locals 1

    .line 2512
    iget v0, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    return v0
.end method

.method public whitelist getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;
    .locals 1
    .param p1, "index"    # I

    .line 2558
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 2559
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure$WindowNode;

    return-object v0
.end method

.method public whitelist getWindowNodeCount()I
    .locals 1

    .line 2549
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 2550
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist isHomeActivity()Z
    .locals 1

    .line 2542
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    return v0
.end method

.method public greylist-max-o sanitizeForParceling(Z)V
    .locals 0
    .param p1, "sanitize"    # Z

    .line 2369
    iput-boolean p1, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    .line 2370
    return-void
.end method

.method public greylist-max-o setAcquisitionEndTime(J)V
    .locals 0
    .param p1, "acquisitionEndTime"    # J

    .line 105
    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    .line 106
    return-void
.end method

.method public greylist-max-o setAcquisitionStartTime(J)V
    .locals 0
    .param p1, "acquisitionStartTime"    # J

    .line 100
    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    .line 101
    return-void
.end method

.method public greylist-max-o setActivityComponent(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 2520
    iput-object p1, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    .line 2521
    return-void
.end method

.method public greylist-max-o setHomeActivity(Z)V
    .locals 0
    .param p1, "isHomeActivity"    # Z

    .line 113
    iput-boolean p1, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    .line 114
    return-void
.end method

.method public blacklist setTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 2503
    iput p1, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    .line 2504
    return-void
.end method

.method greylist-max-o waitForReady()Z
    .locals 7

    .line 2589
    const/4 v0, 0x0

    .line 2590
    .local v0, "skipStructure":Z
    monitor-enter p0

    .line 2591
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    .line 2593
    .local v1, "endTime":J
    :goto_0
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "now":J
    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    .line 2595
    sub-long v3, v1, v5

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2597
    :goto_1
    goto :goto_0

    .line 2596
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2599
    .end local v5    # "now":J
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2601
    const-string v3, "AssistStructure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping assist structure, waiting too long for async children (have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    .line 2602
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remaining"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2601
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    const/4 v0, 0x1

    .line 2605
    .end local v1    # "endTime":J
    :cond_1
    monitor-exit p0

    .line 2606
    xor-int/lit8 v1, v0, 0x1

    return v1

    .line 2605
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2623
    iget v0, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2624
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2625
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2626
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    if-eqz v0, :cond_1

    .line 2629
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    if-nez v0, :cond_0

    .line 2630
    new-instance v0, Landroid/app/assist/AssistStructure$SendChannel;

    invoke-direct {v0, p0}, Landroid/app/assist/AssistStructure$SendChannel;-><init>(Landroid/app/assist/AssistStructure;)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    .line 2632
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 2635
    :cond_1
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2637
    :goto_0
    return-void
.end method
