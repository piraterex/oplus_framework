.class interface abstract Landroid/widget/CursorFilter$CursorFilterClient;
.super Ljava/lang/Object;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CursorFilterClient"
.end annotation


# virtual methods
.method public abstract greylist-max-o changeCursor(Landroid/database/Cursor;)V
.end method

.method public abstract greylist-max-o convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public abstract greylist-max-o getCursor()Landroid/database/Cursor;
.end method

.method public abstract greylist-max-o runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
.end method
