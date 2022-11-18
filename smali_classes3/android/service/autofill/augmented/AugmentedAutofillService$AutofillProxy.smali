.class final Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;
.super Ljava/lang/Object;
.source "AugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/AugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutofillProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy$ReportEvent;
    }
.end annotation


# static fields
.field static final blacklist REPORT_EVENT_INLINE_RESPONSE:I = 0x4

.field static final blacklist REPORT_EVENT_NO_RESPONSE:I = 0x1

.field static final blacklist REPORT_EVENT_UI_DESTROYED:I = 0x3

.field static final blacklist REPORT_EVENT_UI_SHOWN:I = 0x2


# instance fields
.field private blacklist mCallback:Landroid/service/autofill/augmented/IFillCallback;

.field private blacklist mCancellationSignal:Landroid/os/CancellationSignal;

.field private final blacklist mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

.field public final blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mFillWindow:Landroid/service/autofill/augmented/FillWindow;

.field private blacklist mFirstOnSuccessTime:J

.field private final blacklist mFirstRequestTime:J

.field private blacklist mFocusedId:Landroid/view/autofill/AutofillId;

.field private blacklist mFocusedValue:Landroid/view/autofill/AutofillValue;

.field private blacklist mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;

.field private blacklist mLastShownId:Landroid/view/autofill/AutofillId;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mServicePackageName:Ljava/lang/String;

.field private final blacklist mSessionId:I

.field private blacklist mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

.field public final blacklist mTaskId:I

.field private blacklist mUiFirstDestroyedTime:J

.field private blacklist mUiFirstShownTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/service/autofill/augmented/IFillCallback;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusedId(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdestroy(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->destroy()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestAutofill(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Z
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->requestAutofill()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->update(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "client"    # Landroid/os/IBinder;
    .param p3, "taskId"    # I
    .param p4, "serviceComponentName"    # Landroid/content/ComponentName;
    .param p5, "componentName"    # Landroid/content/ComponentName;
    .param p6, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p7, "focusedValue"    # Landroid/view/autofill/AutofillValue;
    .param p8, "requestTime"    # J
    .param p10, "callback"    # Landroid/service/autofill/augmented/IFillCallback;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    .line 451
    iput p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    .line 452
    invoke-static {p2}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAugmentedAutofillManagerClient;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 453
    iput-object p10, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    .line 454
    iput p3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mTaskId:I

    .line 455
    iput-object p5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mComponentName:Landroid/content/ComponentName;

    .line 456
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mServicePackageName:Ljava/lang/String;

    .line 457
    iput-object p6, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 458
    iput-object p7, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    .line 459
    iput-wide p8, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    .line 460
    iput-object p11, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 462
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;-><init>(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method private blacklist destroy()V
    .locals 3

    .line 692
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    if-eqz v1, :cond_1

    .line 694
    sget-boolean v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "destroying window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    invoke-virtual {v1}, Landroid/service/autofill/augmented/FillWindow;->destroy()V

    .line 696
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    .line 698
    :cond_1
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist requestAutofill()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->requestAutofill(ILandroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method private blacklist update(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V
    .locals 4
    .param p1, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p2, "focusedValue"    # Landroid/view/autofill/AutofillValue;
    .param p3, "callback"    # Landroid/service/autofill/augmented/IFillCallback;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 536
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 538
    iput-object p2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    .line 539
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;

    .line 540
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 542
    :try_start_1
    invoke-interface {v1}, Landroid/service/autofill/augmented/IFillCallback;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    invoke-interface {v1}, Landroid/service/autofill/augmented/IFillCallback;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :cond_0
    goto :goto_0

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to check current pending request status"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mCallback is updated."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_1
    iput-object p3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    .line 551
    iput-object p4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 552
    monitor-exit v0

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist autofill(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    .local p1, "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 490
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 491
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 493
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 494
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/autofill/AutofillValue;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    iget-object v6, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v6}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 498
    .local v3, "hideHighlight":Z
    :cond_1
    iget-object v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    invoke-interface {v4, v5, v1, v2, v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 499
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 651
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sessionId: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 652
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "taskId: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mTaskId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 653
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "focusedId: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 656
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "focusedValue: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 659
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLastShownId:Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_1

    .line 660
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastShownId: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLastShownId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 662
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "client: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "prefix2":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    if-eqz v1, :cond_2

    .line 665
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "window:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    invoke-virtual {v1, v0, p2}, Landroid/service/autofill/augmented/FillWindow;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 668
    :cond_2
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    if-eqz v1, :cond_3

    .line 669
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "smartSuggestion:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    invoke-virtual {v1, v0, p2}, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 672
    :cond_3
    iget-wide v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 673
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long/2addr v1, v5

    .line 674
    .local v1, "responseTime":J
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "response time: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 675
    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 678
    .end local v1    # "responseTime":J
    :cond_4
    iget-wide v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstShownTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    .line 679
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long/2addr v1, v5

    .line 680
    .local v1, "uiRenderingTime":J
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "UI rendering time: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 684
    .end local v1    # "uiRenderingTime":J
    :cond_5
    iget-wide v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstDestroyedTime:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_6

    .line 685
    iget-wide v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long/2addr v1, v3

    .line 686
    .local v1, "uiTotalTime":J
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "UI life time: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 687
    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 689
    .end local v1    # "uiTotalTime":J
    :cond_6
    return-void
.end method

.method public blacklist getFillWindow()Landroid/service/autofill/augmented/FillWindow;
    .locals 2

    .line 508
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    monitor-exit v0

    return-object v1

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getFocusedId()Landroid/view/autofill/AutofillId;
    .locals 2

    .line 557
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    monitor-exit v0

    return-object v1

    .line 559
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getFocusedValue()Landroid/view/autofill/AutofillValue;
    .locals 2

    .line 564
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    monitor-exit v0

    return-object v1

    .line 566
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getFocusedViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .locals 5

    .line 580
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 583
    :try_start_1
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->getViewNodeParcelable(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNodeParcelable;

    move-result-object v1

    .line 585
    .local v1, "viewNodeParcelable":Landroid/app/assist/AssistStructure$ViewNodeParcelable;
    if-eqz v1, :cond_0

    .line 586
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNodeParcelable;->getViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v2

    iput-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    .end local v1    # "viewNodeParcelable":Landroid/app/assist/AssistStructure$ViewNodeParcelable;
    :cond_0
    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting the ViewNode of the focused view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 593
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;

    monitor-exit v0

    return-object v1

    .line 594
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getSmartSuggestionParams()Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;
    .locals 6

    .line 466
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_0
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLastShownId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 472
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget-object v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v2, v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->getViewCoordinates(Landroid/view/autofill/AutofillId;)Landroid/graphics/Rect;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    .local v2, "rect":Landroid/graphics/Rect;
    nop

    .line 477
    if-nez v2, :cond_2

    .line 478
    :try_start_2
    sget-boolean v3, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getViewCoordinates("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    monitor-exit v0

    return-object v1

    .line 481
    :cond_2
    new-instance v1, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    invoke-direct {v1, p0, v2}, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    .line 482
    iget-object v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLastShownId:Landroid/view/autofill/AutofillId;

    .line 483
    monitor-exit v0

    return-object v1

    .line 473
    .end local v2    # "rect":Landroid/graphics/Rect;
    :catch_0
    move-exception v2

    .line 474
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get coordinates for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    monitor-exit v0

    return-object v1

    .line 484
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method blacklist logEvent(I)V
    .locals 11
    .param p1, "event"    # I

    .line 598
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "returnAndLogResult(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    const-wide/16 v0, -0x1

    .line 600
    .local v0, "duration":J
    const/4 v2, 0x0

    .line 602
    .local v2, "type":I
    const-wide/16 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 645
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid event reported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 617
    :pswitch_0
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    .line 619
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long v0, v3, v5

    .line 620
    sget-boolean v3, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v3, :cond_1

    .line 621
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inline response in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 636
    :pswitch_1
    const/4 v2, 0x2

    .line 637
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstDestroyedTime:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    .line 638
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstDestroyedTime:J

    .line 639
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long v0, v3, v5

    .line 640
    sget-boolean v3, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UI destroyed in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    :pswitch_2
    const/4 v2, 0x1

    .line 628
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstShownTime:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    .line 629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstShownTime:J

    .line 630
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long v0, v3, v5

    .line 631
    sget-boolean v3, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UI shown in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :pswitch_3
    const/16 v2, 0xa

    .line 605
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    .line 606
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    .line 607
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long v0, v3, v5

    .line 608
    sget-boolean v3, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v3, :cond_1

    .line 609
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service responded nothing in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_1
    :goto_0
    iget-object v6, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mServicePackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mComponentName:Landroid/content/ComponentName;

    iget v8, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    move v5, v2

    move-wide v9, v0

    invoke-static/range {v5 .. v10}, Landroid/service/autofill/augmented/Helper;->logResponse(ILjava/lang/String;Landroid/content/ComponentName;IJ)V

    .line 648
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist reportResult(Ljava/util/List;Landroid/os/Bundle;Z)V
    .locals 4
    .param p2, "clientState"    # Landroid/os/Bundle;
    .param p3, "showingFillWindow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 572
    .local p1, "inlineSuggestionsData":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/service/autofill/augmented/IFillCallback;->onSuccess(Ljava/util/List;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling back with the inline suggestions data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist requestHideFillUi()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 527
    return-void
.end method

.method public blacklist requestShowFillUi(IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "anchorBounds"    # Landroid/graphics/Rect;
    .param p4, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 517
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requestShowFillUi() not showing because request is cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    return-void

    .line 521
    :cond_1
    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    iget-object v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 523
    return-void
.end method

.method public blacklist setFillWindow(Landroid/service/autofill/augmented/FillWindow;)V
    .locals 2
    .param p1, "fillWindow"    # Landroid/service/autofill/augmented/FillWindow;

    .line 502
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_0
    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    .line 504
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
