.class Landroid/app/SharedPreferencesImpl$EditorImpl$2;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl$EditorImpl;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/SharedPreferencesImpl$EditorImpl;

.field final synthetic blacklist val$awaitCommit:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/SharedPreferencesImpl$EditorImpl;

    .line 497
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->this$1:Landroid/app/SharedPreferencesImpl$EditorImpl;

    iput-object p2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 500
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 501
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/app/QueuedWork;->removeFinisher(Ljava/lang/Runnable;)V

    .line 502
    return-void
.end method
