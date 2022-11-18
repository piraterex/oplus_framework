.class Landroid/app/SharedPreferencesImpl$1;
.super Ljava/lang/Thread;
.source "SharedPreferencesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SharedPreferencesImpl;
    .param p2, "name"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$mloadFromDisk(Landroid/app/SharedPreferencesImpl;)V

    .line 141
    return-void
.end method
