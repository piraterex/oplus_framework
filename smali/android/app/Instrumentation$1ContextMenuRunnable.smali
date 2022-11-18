.class Landroid/app/Instrumentation$1ContextMenuRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Instrumentation;->invokeContextMenuAction(Landroid/app/Activity;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContextMenuRunnable"
.end annotation


# instance fields
.field private final blacklist activity:Landroid/app/Activity;

.field private final blacklist flags:I

.field private final blacklist identifier:I

.field blacklist returnValue:Z

.field final synthetic blacklist this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor blacklist <init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Instrumentation;
    .param p2, "_activity"    # Landroid/app/Activity;
    .param p3, "_identifier"    # I
    .param p4, "_flags"    # I

    .line 1059
    iput-object p1, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->this$0:Landroid/app/Instrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p2, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->activity:Landroid/app/Activity;

    .line 1061
    iput p3, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->identifier:I

    .line 1062
    iput p4, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->flags:I

    .line 1063
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 1066
    iget-object v0, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1067
    .local v0, "win":Landroid/view/Window;
    iget v1, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->identifier:I

    iget v2, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->performContextMenuIdentifierAction(II)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    .line 1070
    return-void
.end method
