.class public Landroid/window/ImeOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "ImeOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ImeOnBackInvokedDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist RESULT_CODE_REGISTER:I = 0x0

.field static final blacklist RESULT_CODE_UNREGISTER:I = 0x1

.field static final blacklist RESULT_KEY_CALLBACK:Ljava/lang/String; = "callback"

.field static final blacklist RESULT_KEY_ID:Ljava/lang/String; = "id"

.field static final blacklist RESULT_KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final blacklist TAG:Ljava/lang/String; = "ImeBackDispatcher"


# instance fields
.field private final blacklist mImeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreceive(Landroid/window/ImeOnBackInvokedDispatcher;ILandroid/os/Bundle;Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/window/ImeOnBackInvokedDispatcher;->receive(ILandroid/os/Bundle;Landroid/window/OnBackInvokedDispatcher;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$2;

    invoke-direct {v0}, Landroid/window/ImeOnBackInvokedDispatcher$2;-><init>()V

    sput-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$1;

    invoke-direct {v0, p0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$1;-><init>(Landroid/window/ImeOnBackInvokedDispatcher;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 64
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    .line 76
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 77
    return-void
.end method

.method private blacklist receive(ILandroid/os/Bundle;Landroid/window/OnBackInvokedDispatcher;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .param p3, "receivingDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 126
    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "callbackId":I
    if-nez p1, :cond_0

    .line 128
    const-string/jumbo v1, "priority"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "priority":I
    nop

    .line 130
    const-string v2, "callback"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 129
    invoke-static {v2}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v2

    .line 131
    .local v2, "callback":Landroid/window/IOnBackInvokedCallback;
    invoke-direct {p0, v2, v1, v0, p3}, Landroid/window/ImeOnBackInvokedDispatcher;->registerReceivedCallback(Landroid/window/IOnBackInvokedCallback;IILandroid/window/OnBackInvokedDispatcher;)V

    .end local v1    # "priority":I
    .end local v2    # "callback":Landroid/window/IOnBackInvokedCallback;
    goto :goto_0

    .line 133
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 134
    invoke-direct {p0, v0, p3}, Landroid/window/ImeOnBackInvokedDispatcher;->unregisterReceivedCallback(ILandroid/window/OnBackInvokedDispatcher;)V

    goto :goto_1

    .line 133
    :cond_1
    :goto_0
    nop

    .line 136
    :goto_1
    return-void
.end method

.method private blacklist registerReceivedCallback(Landroid/window/IOnBackInvokedCallback;IILandroid/window/OnBackInvokedDispatcher;)V
    .locals 2
    .param p1, "iCallback"    # Landroid/window/IOnBackInvokedCallback;
    .param p2, "priority"    # I
    .param p3, "callbackId"    # I
    .param p4, "receivingDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 143
    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    invoke-direct {v0, p1, p3, p2}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;-><init>(Landroid/window/IOnBackInvokedCallback;II)V

    .line 145
    .local v0, "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {p4, p2, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 147
    return-void
.end method

.method private blacklist unregisterReceivedCallback(ILandroid/window/OnBackInvokedDispatcher;)V
    .locals 4
    .param p1, "callbackId"    # I
    .param p2, "receivingDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    .line 153
    .local v2, "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    invoke-static {v2}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->-$$Nest$mgetId(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 154
    move-object v0, v2

    .line 155
    goto :goto_1

    .line 157
    .end local v2    # "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    :cond_0
    goto :goto_0

    .line 158
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ime callback not found. Ignoring unregisterReceivedCallback. callbackId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImeBackDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 163
    :cond_2
    invoke-interface {p2, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 164
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 3

    .line 170
    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    .line 172
    .local v1, "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    invoke-virtual {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 173
    .end local v1    # "callback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;
    .locals 1

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

    invoke-direct {v1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;-><init>(Landroid/window/OnBackInvokedCallback;)V

    .line 86
    .local v1, "iCallback":Landroid/window/IOnBackInvokedCallback;
    invoke-interface {v1}, Landroid/window/IOnBackInvokedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "callback"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 87
    const-string/jumbo v2, "priority"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    iget-object v2, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public blacklist switchRootView(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl;)V
    .locals 4
    .param p1, "previous"    # Landroid/view/ViewRootImpl;
    .param p2, "current"    # Landroid/view/ViewRootImpl;

    .line 225
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    .line 226
    .local v1, "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    .line 230
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-static {v1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->-$$Nest$fgetmPriority(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 233
    .end local v1    # "imeCallback":Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
    :cond_1
    goto :goto_0

    .line 234
    :cond_2
    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 108
    return-void
.end method
