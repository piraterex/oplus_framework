.class Lcom/android/internal/app/ChooserActivity$FileInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public final blacklist hasThumbnail:Z

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hasThumbnail"    # Z

    .line 1480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1481
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    .line 1482
    iput-boolean p2, p0, Lcom/android/internal/app/ChooserActivity$FileInfo;->hasThumbnail:Z

    .line 1483
    return-void
.end method
