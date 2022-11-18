.class final Landroid/app/Activity$ManagedCursor;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManagedCursor"
.end annotation


# instance fields
.field private final greylist-max-o mCursor:Landroid/database/Cursor;

.field private greylist-max-o mReleased:Z

.field private greylist-max-o mUpdated:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdated(Landroid/app/Activity$ManagedCursor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUpdated(Landroid/app/Activity$ManagedCursor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object p1, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    .line 933
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    .line 934
    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    .line 935
    return-void
.end method
