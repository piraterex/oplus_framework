.class Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;
.super Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 1057
    iput-object p1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getCursorCapsMode$9(ILjava/lang/Integer;)[B
    .locals 1
    .param p0, "reqModes"    # I
    .param p1, "result"    # Ljava/lang/Integer;

    .line 1202
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getSurroundingText$3(IIILandroid/view/inputmethod/SurroundingText;)[B
    .locals 1
    .param p0, "beforeLength"    # I
    .param p1, "afterLength"    # I
    .param p2, "flags"    # I
    .param p3, "result"    # Landroid/view/inputmethod/SurroundingText;

    .line 1119
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "states"    # I

    .line 1208
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v2, "clearMetaKeyStatesFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1219
    return-void
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 1062
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v7, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string v1, "commitTextFromA11yIme"

    invoke-static {v0, v1, v7}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method

.method public blacklist deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 1127
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string v2, "deleteSurroundingTextFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1138
    return-void
.end method

.method public blacklist getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "reqModes"    # I
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 1192
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 1202
    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1192
    :goto_0
    const-string v3, "getCursorCapsModeFromA11yIme"

    invoke-static {v0, v3, p3, v1, v2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 1203
    return-void
.end method

.method public blacklist getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "flags"    # I
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 1099
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v7, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    .line 1119
    invoke-static {}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;-><init>(III)V

    goto :goto_0

    .line 1120
    :cond_0
    const/4 v1, 0x0

    .line 1099
    :goto_0
    const-string v2, "getSurroundingTextFromA11yIme"

    invoke-static {v0, v2, p5, v7, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 1121
    return-void
.end method

.method synthetic blacklist lambda$clearMetaKeyStates$10$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "states"    # I

    .line 1209
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1210
    return-void

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1213
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1217
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 1218
    return-void

    .line 1214
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-void
.end method

.method synthetic blacklist lambda$commitText$0$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 1063
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1064
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1067
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1072
    :cond_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1073
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1074
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 1075
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1076
    return-void

    .line 1068
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void
.end method

.method synthetic blacklist lambda$deleteSurroundingText$4$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 1128
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1129
    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1132
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1136
    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1137
    return-void

    .line 1133
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void
.end method

.method synthetic blacklist lambda$getCursorCapsMode$8$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .locals 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "reqModes"    # I

    .line 1193
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    .line 1194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1193
    if-eq v0, v1, :cond_0

    .line 1194
    return-object v2

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1197
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1201
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1198
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string v3, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-object v2
.end method

.method synthetic blacklist lambda$getSurroundingText$2$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "flags"    # I

    .line 1100
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1101
    return-object v2

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1104
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v1, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1108
    :cond_1
    if-gez p2, :cond_2

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid beforeLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-object v2

    .line 1113
    :cond_2
    if-gez p3, :cond_3

    .line 1114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid afterLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-object v2

    .line 1118
    :cond_3
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v1

    return-object v1

    .line 1105
    :cond_4
    :goto_0
    const-string v3, "getSurroundingText on inactive InputConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return-object v2
.end method

.method synthetic blacklist lambda$performContextMenuAction$7$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 1176
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1177
    return-void

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1180
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1184
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 1185
    return-void

    .line 1181
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performContextMenuAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void
.end method

.method synthetic blacklist lambda$performEditorAction$6$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 1160
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1161
    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1164
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1168
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 1169
    return-void

    .line 1165
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "performEditorAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void
.end method

.method synthetic blacklist lambda$sendKeyEvent$5$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1144
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1145
    return-void

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1148
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1152
    :cond_1
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1153
    return-void

    .line 1149
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "sendKeyEvent on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-void
.end method

.method synthetic blacklist lambda$setSelection$1$com-android-internal-inputmethod-RemoteInputConnectionImpl$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1083
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmCurrentSessionId(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1084
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1087
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1091
    :cond_1
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1092
    return-void

    .line 1088
    :cond_2
    :goto_0
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setSelection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return-void
.end method

.method public blacklist performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 1175
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo v2, "performContextMenuActionFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1186
    return-void
.end method

.method public blacklist performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 1159
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo v2, "performEditorActionFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1170
    return-void
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1143
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo v2, "sendKeyEventFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1154
    return-void
.end method

.method public blacklist setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 3
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1082
    iget-object v0, p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;->this$0:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v2, "setSelectionFromA11yIme"

    invoke-static {v0, v2, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1093
    return-void
.end method
