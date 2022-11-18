.class final Landroid/content/ContentProviderClient$CursorWrapperInner;
.super Landroid/database/CrossProcessCursorWrapper;
.source "ContentProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorWrapperInner"
.end annotation


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field final synthetic blacklist this$0:Landroid/content/ContentProviderClient;


# direct methods
.method constructor blacklist <init>(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 696
    iput-object p1, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->this$0:Landroid/content/ContentProviderClient;

    .line 697
    invoke-direct {p0, p2}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 694
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 698
    const-string v0, "CursorWrapperInner.close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 699
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 703
    iget-object v0, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 704
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    .line 705
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 710
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 714
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient$CursorWrapperInner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 717
    nop

    .line 718
    return-void

    .line 716
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 717
    throw v0
.end method
