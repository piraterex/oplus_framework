.class public interface abstract Landroid/text/Spanned;
.super Ljava/lang/Object;
.source "Spanned.java"

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field public static final whitelist SPAN_COMPOSING:I = 0x100

.field public static final whitelist SPAN_EXCLUSIVE_EXCLUSIVE:I = 0x21

.field public static final whitelist SPAN_EXCLUSIVE_INCLUSIVE:I = 0x22

.field public static final whitelist SPAN_INCLUSIVE_EXCLUSIVE:I = 0x11

.field public static final whitelist SPAN_INCLUSIVE_INCLUSIVE:I = 0x12

.field public static final whitelist SPAN_INTERMEDIATE:I = 0x200

.field public static final whitelist SPAN_MARK_MARK:I = 0x11

.field public static final whitelist SPAN_MARK_POINT:I = 0x12

.field public static final whitelist SPAN_PARAGRAPH:I = 0x33

.field public static final whitelist SPAN_POINT_MARK:I = 0x21

.field public static final whitelist SPAN_POINT_MARK_MASK:I = 0x33

.field public static final whitelist SPAN_POINT_POINT:I = 0x22

.field public static final whitelist SPAN_PRIORITY:I = 0xff0000

.field public static final whitelist SPAN_PRIORITY_SHIFT:I = 0x10

.field public static final whitelist SPAN_USER:I = -0x1000000

.field public static final whitelist SPAN_USER_SHIFT:I = 0x18


# virtual methods
.method public abstract whitelist getSpanEnd(Ljava/lang/Object;)I
.end method

.method public abstract whitelist getSpanFlags(Ljava/lang/Object;)I
.end method

.method public abstract whitelist getSpanStart(Ljava/lang/Object;)I
.end method

.method public abstract whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation
.end method

.method public abstract whitelist nextSpanTransition(IILjava/lang/Class;)I
.end method
