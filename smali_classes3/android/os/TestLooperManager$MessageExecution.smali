.class Landroid/os/TestLooperManager$MessageExecution;
.super Ljava/lang/Object;
.source "TestLooperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageExecution"
.end annotation


# instance fields
.field private greylist-max-o m:Landroid/os/Message;

.field private greylist-max-o response:Ljava/lang/Throwable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetm(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetresponse(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputm(Landroid/os/TestLooperManager$MessageExecution;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputresponse(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/TestLooperManager$MessageExecution-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager$MessageExecution;-><init>()V

    return-void
.end method
