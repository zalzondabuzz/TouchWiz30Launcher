.class Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;
.super Ljava/lang/Object;
.source "QuickViewMainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animate"
.end annotation


# instance fields
.field private mAnimateEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mDestRects:[Landroid/graphics/Rect;

.field private mResultRects:[Landroid/graphics/Rect;

.field private mScroller:Landroid/widget/Scroller;

.field private mStartRects:[Landroid/graphics/Rect;

.field private mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1261
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    new-array v0, v3, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mStartRects:[Landroid/graphics/Rect;

    .line 1255
    new-array v0, v3, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mDestRects:[Landroid/graphics/Rect;

    .line 1256
    new-array v0, v3, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mResultRects:[Landroid/graphics/Rect;

    .line 1258
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v0}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mAnimateEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    .line 1262
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mScroller:Landroid/widget/Scroller;

    .line 1263
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1283
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mScroller:Landroid/widget/Scroller;

    .line 1284
    .local v2, scroller:Landroid/widget/Scroller;
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 1286
    .local v0, more:Z
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 1287
    .local v1, progress:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mAnimateEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mStartRects:[Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mDestRects:[Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mResultRects:[Landroid/graphics/Rect;

    int-to-float v8, v1

    const/high16 v9, 0x42c8

    div-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    .line 1289
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mTargetView:Landroid/view/View;

    .line 1290
    .local v3, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1291
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mResultRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mResultRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v10

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mResultRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v10

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mResultRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1293
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    .line 1295
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->post(Ljava/lang/Runnable;)Z

    .line 1301
    :goto_0
    return-void

    .line 1297
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v10

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v10

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1299
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public start(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "target"
    .parameter "nextRect"

    .prologue
    const/4 v1, 0x0

    .line 1266
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->stop()V

    .line 1267
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mTargetView:Landroid/view/View;

    .line 1268
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mStartRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1270
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->mScroller:Landroid/widget/Scroller;

    const/16 v3, 0x64

    const/16 v5, 0x12c

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1271
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->post(Ljava/lang/Runnable;)Z

    .line 1272
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1276
    return-void
.end method
