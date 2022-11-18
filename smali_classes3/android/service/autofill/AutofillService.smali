.class public abstract Landroid/service/autofill/AutofillService;
.super Landroid/app/Service;
.source "AutofillService.java"


# static fields
.field public static final blacklist EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final whitelist EXTRA_FILL_RESPONSE:Ljava/lang/String; = "android.service.autofill.extra.FILL_RESPONSE"

.field public static final blacklist EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.AutofillService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.autofill"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillService"


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mInterface:Landroid/service/autofill/IAutoFillService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/AutofillService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 555
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 602
    new-instance v0, Landroid/service/autofill/AutofillService$1;

    invoke-direct {v0, p0}, Landroid/service/autofill/AutofillService$1;-><init>(Landroid/service/autofill/AutofillService;)V

    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mInterface:Landroid/service/autofill/IAutoFillService;

    return-void
.end method


# virtual methods
.method public final whitelist getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .locals 2

    .line 751
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/service/autofill/AutofillService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 753
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-nez v0, :cond_0

    .line 754
    const/4 v1, 0x0

    return-object v1

    .line 756
    :cond_0
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 652
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.autofill.AutofillService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Landroid/service/autofill/AutofillService;->mInterface:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v0}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.autofill.AutofillService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onConnected()V
    .locals 0

    .line 665
    return-void
.end method

.method public whitelist onCreate()V
    .locals 4

    .line 645
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 646
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mHandler:Landroid/os/Handler;

    .line 647
    invoke-static {v3}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 648
    return-void
.end method

.method public whitelist onDisconnected()V
    .locals 0

    .line 728
    return-void
.end method

.method public abstract whitelist onFillRequest(Landroid/service/autofill/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/FillCallback;)V
.end method

.method public abstract whitelist onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/SaveCallback;)V
.end method

.method public whitelist onSavedDatasetsInfoRequest(Landroid/service/autofill/SavedDatasetsInfoCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/service/autofill/SavedDatasetsInfoCallback;

    .line 717
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/service/autofill/SavedDatasetsInfoCallback;->onError(I)V

    .line 718
    return-void
.end method
