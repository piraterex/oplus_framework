.class Landroid/widget/Editor$EditorWrapper;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/IEditorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorWrapper"
.end annotation


# instance fields
.field private blacklist mEditorExt:Landroid/widget/IEditorExt;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .locals 1

    .line 8077
    iput-object p1, p0, Landroid/widget/Editor$EditorWrapper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8078
    const-class v0, Landroid/widget/IEditorExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/IEditorExt;

    iput-object p1, p0, Landroid/widget/Editor$EditorWrapper;->mEditorExt:Landroid/widget/IEditorExt;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor$EditorWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$EditorWrapper;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public blacklist getEditorExt()Landroid/widget/IEditorExt;
    .locals 1

    .line 8081
    iget-object v0, p0, Landroid/widget/Editor$EditorWrapper;->mEditorExt:Landroid/widget/IEditorExt;

    return-object v0
.end method

.method public blacklist getShowCursor()J
    .locals 2

    .line 8089
    iget-object v0, p0, Landroid/widget/Editor$EditorWrapper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmShowCursor(Landroid/widget/Editor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTextView()Landroid/widget/TextView;
    .locals 1

    .line 8085
    iget-object v0, p0, Landroid/widget/Editor$EditorWrapper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist resumeBlink()V
    .locals 1

    .line 8101
    iget-object v0, p0, Landroid/widget/Editor$EditorWrapper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mresumeBlink(Landroid/widget/Editor;)V

    .line 8102
    return-void
.end method

.method public blacklist setShowCursor(J)V
    .locals 1
    .param p1, "showCursor"    # J

    .line 8093
    iget-object v0, p0, Landroid/widget/Editor$EditorWrapper;->this$0:Landroid/widget/Editor;

    invoke-static {v0, p1, p2}, Landroid/widget/Editor;->-$$Nest$fputmShowCursor(Landroid/widget/Editor;J)V

    .line 8094
    return-void
.end method

.method public blacklist suspendBlink()V
    .locals 1

    .line 8097
    iget-object v0, p0, Landroid/widget/Editor$EditorWrapper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$msuspendBlink(Landroid/widget/Editor;)V

    .line 8098
    return-void
.end method
