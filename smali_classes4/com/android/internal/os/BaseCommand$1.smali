.class Lcom/android/internal/os/BaseCommand$1;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "BaseCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BaseCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BaseCommand;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BaseCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BaseCommand;

    .line 30
    iput-object p1, p0, Lcom/android/internal/os/BaseCommand$1;->this$0:Lcom/android/internal/os/BaseCommand;

    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onHelp()V
    .locals 0

    .line 35
    return-void
.end method
