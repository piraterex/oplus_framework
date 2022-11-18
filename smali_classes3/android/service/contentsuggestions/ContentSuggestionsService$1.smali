.class Landroid/service/contentsuggestions/ContentSuggestionsService$1;
.super Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;
.source "ContentSuggestionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentsuggestions/ContentSuggestionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;


# direct methods
.method constructor blacklist <init>(Landroid/service/contentsuggestions/ContentSuggestionsService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 63
    iput-object p1, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-direct {p0}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 4
    .param p1, "request"    # Landroid/app/contentsuggestions/ClassificationsRequest;
    .param p2, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;

    .line 106
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 108
    invoke-static {v2, p2}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$mwrapClassificationCallback(Landroid/service/contentsuggestions/ContentSuggestionsService;Landroid/app/contentsuggestions/IClassificationsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    move-result-object v3

    .line 106
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    return-void
.end method

.method public blacklist notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "interaction"    # Landroid/os/Bundle;

    .line 113
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 114
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method

.method public blacklist provideContextImage(ILandroid/hardware/HardwareBuffer;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "contextImage"    # Landroid/hardware/HardwareBuffer;
    .param p3, "colorSpaceId"    # I
    .param p4, "imageContextRequestExtras"    # Landroid/os/Bundle;

    .line 67
    const-string v0, "android.contentsuggestions.extra.BITMAP"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Two bitmaps provided; expected one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 73
    .local v1, "wrappedBuffer":Landroid/graphics/Bitmap;
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_1

    .line 77
    :cond_2
    if-eqz p2, :cond_4

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    if-ltz p3, :cond_3

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    array-length v2, v2

    if-ge p3, v2, :cond_3

    .line 80
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 82
    :cond_3
    invoke-static {p2, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->close()V

    .line 87
    .end local v0    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 88
    invoke-static {v2, v3, v4, v1, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    return-void
.end method

.method public blacklist suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 4
    .param p1, "request"    # Landroid/app/contentsuggestions/SelectionsRequest;
    .param p2, "callback"    # Landroid/app/contentsuggestions/ISelectionsCallback;

    .line 97
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-static {v0}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;->this$0:Landroid/service/contentsuggestions/ContentSuggestionsService;

    .line 99
    invoke-static {v2, p2}, Landroid/service/contentsuggestions/ContentSuggestionsService;->-$$Nest$mwrapSelectionsCallback(Landroid/service/contentsuggestions/ContentSuggestionsService;Landroid/app/contentsuggestions/ISelectionsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

    move-result-object v3

    .line 97
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method
