.class Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
.super Ljava/lang/Object;
.source "ImeOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImeOnBackInvokedCallback"
.end annotation


# instance fields
.field private final blacklist mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final blacklist mId:I

.field private final blacklist mPriority:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .locals 0

    iget p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetId(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .locals 0

    invoke-direct {p0}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->getId()I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/window/IOnBackInvokedCallback;II)V
    .locals 0
    .param p1, "iCallback"    # Landroid/window/IOnBackInvokedCallback;
    .param p2, "id"    # I
    .param p3, "priority"    # I

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 191
    iput p2, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    .line 192
    iput p3, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    .line 193
    return-void
.end method

.method private blacklist getId()I
    .locals 1

    .line 207
    iget v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    return v0
.end method


# virtual methods
.method blacklist getIOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-object v0
.end method

.method public whitelist onBackInvoked()V
    .locals 3

    .line 198
    :try_start_0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
