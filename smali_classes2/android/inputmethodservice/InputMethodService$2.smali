.class Landroid/inputmethodservice/InputMethodService$2;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    .line 3920
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dumpToProto(Landroid/util/proto/ProtoOutputStream;[B)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "icProto"    # [B

    .line 3926
    const-wide v0, 0x10b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3927
    .local v0, "token":J
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/inputmethodservice/SoftInputWindow;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3928
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3929
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3930
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3931
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3932
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3933
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3934
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3935
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3936
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    const-wide v3, 0x1080000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3937
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    const-wide v3, 0x1080000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3938
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    const-wide v3, 0x1080000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3939
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_0

    .line 3940
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-wide v3, 0x10b0000000dL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3942
    :cond_0
    const-wide v2, 0x1080000000eL

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v4, v4, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3943
    const-wide v2, 0x1080000000fL

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v4, v4, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3944
    const-wide v2, 0x10500000012L

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v4, v4, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3945
    const-wide v2, 0x10500000013L

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v4, v4, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3946
    const-wide v2, 0x10800000014L

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v4, v4, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3947
    const-wide v2, 0x10800000015L

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v4, v4, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3948
    const-wide v2, 0x10800000016L

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v4, v4, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3949
    const-wide v2, 0x10500000017L

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v4, v4, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3950
    const-wide v2, 0x10800000018L

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v4, v4, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3951
    const-wide v2, 0x10500000019L

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v4, v4, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3952
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    const-wide v3, 0x10b0000001aL

    invoke-static {v2, p1, v3, v4}, Landroid/inputmethodservice/InputMethodService$Insets;->-$$Nest$mdumpDebug(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/util/proto/ProtoOutputStream;J)V

    .line 3953
    const-wide v2, 0x1090000001bL

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v4}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmSettingsObserver(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3954
    if-eqz p2, :cond_1

    .line 3955
    const-wide v2, 0x10b0000001cL

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 3957
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3958
    return-void
.end method
